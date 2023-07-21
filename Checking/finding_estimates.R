# ============================================
# Authors:     MJ
# Maintainers: MJ
# Copyright:   2023, HRDAG, GPL v2 or later
# ============================================

pacman::p_load(argparse, arrow, dplyr, fs, stringr, here,
               digest, glue, readr, purrr, tidyr, assertr,styler)

## 1. Functions to test

# Stratify (no changes)

stratify <- function(replicate_data, schema) {
  
  schema_list <- unlist(str_split(schema, pattern = ","))
  
  grouped_data <- replicate_data %>%
    group_by(!!!syms(schema_list)) %>% 
    select(starts_with("in_"))
  
  stratification_vars <- grouped_data %>%
    group_keys() %>%
    group_by_all() %>%
    group_split()
  
  split_data <- grouped_data %>%
    group_split(.keep = FALSE)
  
  return(list(strata_data = split_data,
              stratification_vars = stratification_vars))
  
}

# Lookup_estimates (no changes)

lookup_estimates <- function(stratum_recs, estimates_dir) {
  
  valid_sources <- get_valid_sources(stratum_recs)
  
  lettersplus <- c(letters, paste0(letters, "1"))
  stopifnot(length(lettersplus) >= length(valid_sources))
  anon_sources <- as.character(glue::glue("in_{lettersplus[1:length(valid_sources)]}"))
  
  stratum_recs <- stratum_recs %>% 
    select(starts_with("in_"))
  
  options(dplyr.summarise.inform = FALSE)
  summary_table <- stratum_recs %>%
    dplyr::mutate(rs = rowSums(.)) %>%
    dplyr::filter(rs >= 1) %>%
    dplyr::select(-rs) %>%
    dplyr::mutate(dplyr::across(dplyr::everything(),
                                ~factor(.x, levels = c(0, 1)))) %>%
    dplyr::group_by_all() %>%
    dplyr::summarize(Freq = n()) %>%
    as.data.frame()
  
  if (length(valid_sources) > 0) {
    
    summary_table <- summary_table %>%
      dplyr::select(dplyr::all_of(valid_sources), Freq) %>%
      purrr::set_names(c(anon_sources, "Freq")) %>%
      dplyr::arrange(dplyr::across(dplyr::all_of(anon_sources)))
    
  }
  
  stratum_hash <- digest::digest(summary_table, algo = "sha1")
  stratum_dir <- stringr::str_sub(stratum_hash, 1, 2)
  estimate_file <- glue::glue("{estimates_dir}/{stratum_dir}/{stratum_hash}.json")
  
  if (file.exists(estimate_file)) {
    
    estimates <- tibble::tibble(N = rjson::fromJSON(file = estimate_file))
    return(estimates)
    
  } else {
    
    no_estimates <- tibble::tibble(N = NA_real_)
    return(no_estimates)
    
  }
  
}

# Short_mse (no longer runs lcmcr, just returns a tibble if it doesn't find the estimates)

short_mse <- function(stratum_data, stratum_name,
                estimates_dir = NULL, min_n = 1,
                K = NULL, buffer_size = 10000, sampler_thinning = 1000, seed = 19481210,
                burnin = 10000, n_samples = 10000, posterior_thinning = 500) {
  
  stratum_recs <- stratum_data %>%
    dplyr::select(tidyselect::starts_with("in_")) %>%
    dplyr::mutate(dplyr::across(tidyselect::everything(), ~if_else(. >= 1, 1, 0)))
  
  valid_sources <- get_valid_sources(stratum_recs, min_n)
  
  if (length(valid_sources) < 3) {
    
    return(tibble::tibble_row(validated = FALSE,
                              N = NA_real_,
                              valid_sources = paste(valid_sources, collapse = ","),
                              n_obs = NA_real_,
                              stratum_name = stratum_name))
    
  }
  
  # keep only records that appear on one or more valid source (i.e., no rows
  # with all 0 values)
  stratum_recs <- stratum_recs %>%
    dplyr::select(tidyselect::all_of(valid_sources)) %>%
    dplyr::mutate(rs = rowSums(.)) %>%
    dplyr::filter(rs >= 1) %>%
    dplyr::select(-rs)
  
  n_obs <- nrow(stratum_recs)
  
  if (!is.null(estimates_dir)) {
    
    lookup_results <- lookup_estimates(stratum_recs, estimates_dir)
    
    if (all(is.na(lookup_results$N))) {
      
      K <- min((2 ** length(valid_sources)) - 1, 15)
      
      estimates <- tibble::tibble(N = NA_real_)
      
      
    } else {
      
      estimates <- lookup_results %>%
        dplyr::mutate(validated = TRUE,
                      valid_sources = paste(names(stratum_recs), collapse = ","),
                      n_obs = n_obs,
                      stratum_name = stratum_name) %>%
        dplyr::select(validated, N, valid_sources, n_obs, stratum_name)
      
    }
    
  }
  
  return(estimates)
  
}

# mse (function in verdata, no changes)

mse <- function(stratum_data, stratum_name,
                estimates_dir = NULL, min_n = 1,
                K = NULL, buffer_size = 10000, sampler_thinning = 1000, seed = 19481210,
                burnin = 10000, n_samples = 10000, posterior_thinning = 500) {
  
  stratum_recs <- stratum_data %>%
    dplyr::select(tidyselect::starts_with("in_")) %>%
    dplyr::mutate(dplyr::across(tidyselect::everything(), ~if_else(. >= 1, 1, 0)))
  
  valid_sources <- get_valid_sources(stratum_recs, min_n)
  
  if (length(valid_sources) < 3) {
    
    return(tibble::tibble_row(validated = FALSE,
                              N = NA_real_,
                              valid_sources = paste(valid_sources, collapse = ","),
                              n_obs = NA_real_,
                              stratum_name = stratum_name))
    
  }
  
  # keep only records that appear on one or more valid source (i.e., no rows
  # with all 0 values)
  stratum_recs <- stratum_recs %>%
    dplyr::select(tidyselect::all_of(valid_sources)) %>%
    dplyr::mutate(rs = rowSums(.)) %>%
    dplyr::filter(rs >= 1) %>%
    dplyr::select(-rs)
  
  n_obs <- nrow(stratum_recs)
  
  if (!is.null(estimates_dir)) {
    
    lookup_results <- lookup_estimates(stratum_recs, estimates_dir)
    
    if (all(is.na(lookup_results$N))) {
      
      # fix model specification to be identical to that used to calculate
      # estimates
      
      K <- min((2 ** length(valid_sources)) - 1, 15)
      
      estimates <- run_lcmcr(stratum_recs, stratum_name,
                             min_n = 1,
                             K = K,
                             buffer_size = 10000,
                             sampler_thinning = 1000,
                             seed = 19481210,
                             burnin = 10000,
                             n_samples = 10000,
                             posterior_thinning = 500) %>%
        dplyr::mutate(validated = TRUE,
                      n_obs = n_obs) %>%
        dplyr::select(validated, N, valid_sources, n_obs, stratum_name)
      
    } else {
      
      estimates <- lookup_results %>%
        dplyr::mutate(validated = TRUE,
                      valid_sources = paste(names(stratum_recs), collapse = ","),
                      n_obs = n_obs,
                      stratum_name = stratum_name) %>%
        dplyr::select(validated, N, valid_sources, n_obs, stratum_name)
      
    }
    
  } else {
    
    # allow for custom model specification if not looking up existing
    # estimates
    
    if (is.null(K)) {
      K <- min((2 ** length(valid_sources)) - 1, 15)
    }
    
    estimates <- run_lcmcr(stratum_recs, stratum_name, min_n,
                           K, buffer_size, sampler_thinning, seed,
                           burnin, n_samples, posterior_thinning) %>%
      dplyr::mutate(validated = TRUE,
                    n_obs = n_obs) %>%
      dplyr::select(validated, N, valid_sources, n_obs, stratum_name)
    
  }
  
  return(estimates)
  
}

## 2. Testing

# 2.1 load data (dowloaded from DANE)

desaparicion <- verdata::read_replicates("~/Documents/verdata-parquet/desaparicion",
                                         "desaparicion", 1, 10) %>% 
  filter(is_conflict == TRUE) %>% 
  filter(is_forced_dis == TRUE)

# 2.2 stratification 

schema <- ("replica,yy_hecho,is_forced_dis")

estratificacion <- stratify(desaparicion, schema)

# 2.3 Testing that lookup_estimates can find the estimates

test_lookup <- map_dfr(estratificacion$strata_data,
                       lookup_estimates,
                       estimates_dir = "~/Documents/estimates")

test_exist <- map_dfr(estratificacion$strata_data,
                      estimates_exist,
                      estimates_dir = "~/Documents/estimates")

# 2.4 Testing short_mse

estimaciones <- map2_dfr(.x = estratificacion$strata_data,
                         .y = estratificacion$stratification_vars,
                         .f = short_mse,
                         estimates_dir = "~/Documents/estimates")

# 2.4 Testing mse

estimaciones <- map2_dfr(.x = estratificacion$strata_data,
                         .y = estratificacion$stratification_vars,
                         .f = mse,
                         estimates_dir = "~/Documents/estimates")




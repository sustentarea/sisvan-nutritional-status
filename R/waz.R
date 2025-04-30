# library(checkmate)
  # library(dplyr)
# library(prettycheck) # github.com/danielvartan/prettycheck

#' Calculate Weight-for-Age Z-score (WAZ) According to WHO Standards
#'
#' @description
#'
#' Calculates the Weight-for-Age Z-score (WAZ) using the WHO growth standards
#' (WHO, 2006) based on the LMS method (Box-Cox distribution).
#'
#' @details
#'
#' The WHO formula for calculating z-score with Box-Cox distribution
#' (LMS method) is the following:
#'
#' \deqn{\textrm{If } L \neq 0: z = \frac{(X / M)^{L} - 1}{L \times S}}
#' \deqn{\textrm{If } L = 0: z = \frac{\ln(X / M)}{S}}
#'
#' Where:
#'
#' - \eqn{X} is the observed value (weight, in the case of WAZ).
#' - \eqn{M} is the expected median.
#' - \eqn{S} is the coefficient of variation.
#' - \eqn{L} is the Box-Cox power that corrects for skewness.
#'
#' See WHO (2006) to learn more.
#'
#' @param weight A [`numeric`][base::numeric] vector of observed weights
#'   (in kg).
#' @param median A [`numeric`][base::numeric] vector of expected medians
#'   (in kg) for the corresponding age.
#' @param var_coef A [`numeric`][base::numeric] vector of coefficients of
#'   variation for the corresponding age.
#' @param box_cox_power A [`numeric`][base::numeric] vector of Box-Cox
#'   powers for the corresponding age.
#'
#' @return An [`numeric`][base::numeric] vector of the same length as
#'   `weight` containing the calculated WAZ values.
#' @noRd
#'
#' @references
#'
#' World Health Organization. (2006). WHO child growth standards:
#' Length/height-for-age, weight-for-age, weight-for-length,
#' weight-for-height and body mass index-for-age: Methods and development.
#' WHO Press. \url{https://www.who.int/tools/child-growth-standards/standards}
waz <- function(
    weight, # `NU_PESO` #nolint
    median, # `M`
    var_coef, # `S`
    box_cox_power # `L`
  ) {
  checkmate::assert_numeric(weight)
  checkmate::assert_numeric(median)
  checkmate::assert_numeric(var_coef)
  checkmate::assert_numeric(box_cox_power)
  prettycheck::assert_identical(
    weight, median, var_coef, box_cox_power, type = "length"
  )

  dplyr::case_when(
    !box_cox_power == 0 ~
      ((weight / median)^box_cox_power - 1) / (box_cox_power * var_coef),
    box_cox_power == 0 ~ log(weight / median) / var_coef
  )
}

# Source:
# https://www.who.int/tools/child-growth-standards/standards/weight-for-age
waz_table <- function() {
  waz_boys <- dplyr::tibble(
    IDADE_MESES = 0:60,
    L = c(
      0.3487, 0.2297, 0.197, 0.1738, 0.1553, 0.1395, 0.1257, 0.1134, 0.1026,
      0.0929, 0.0842, 0.0764, 0.0694, 0.063, 0.0572, 0.0519, 0.0471, 0.0426,
      0.0385, 0.0347, 0.0312, 0.0279, 0.0249, 0.022, 0.0193, 0.0168, 0.0144,
      0.0121, 0.01, 0.008, 0.0061, 0.0043, 0.0026, 0.001, -0.0005, -0.002,
      -0.0034, -0.0048, -0.0061, -0.0074, -0.0087, -0.0099, -0.0111, -0.0122,
      -0.0134, -0.0145, -0.0155, -0.0166, -0.0176, -0.0185, -0.0195, -0.0204,
      -0.0212, -0.0221, -0.0229, -0.0237, -0.0245, -0.0252, -0.026
    ),
    M = c(
      3.3464, 4.4709, 5.5675, 6.3762, 7.0023, 7.5105, 7.934, 8.297, 8.6151,
      8.9014, 9.1649, 9.4122, 9.6479, 9.8749, 10.0953, 10.31, 10.52, 10.7254,
      10.9265, 11.1235, 11.3165, 11.5059, 11.692, 11.875, 12.0552, 12.2329,
      12.4081, 12.581, 12.7516, 12.9202, 13.0867, 13.2513, 13.414, 13.5751,
      13.7344, 13.892, 14.0481, 14.2026, 14.3556, 14.5072, 14.6573, 14.8061,
      14.9535, 15.0996, 15.2444, 15.388, 15.5303, 15.6714, 15.8114, 15.9501,
      16.0878, 16.2243, 16.3598, 16.4943, 16.6277, 16.7601, 16.8916, 17.022,
      17.1516
    ),
    S = c(
      0.14602, 0.13395, 0.12385, 0.11727, 0.11316, 0.1108, 0.10958, 0.10902,
      0.10882, 0.10881, 0.10891, 0.10903, 0.10913, 0.10922, 0.10929, 0.10935,
      0.10939, 0.10943, 0.10946, 0.10948, 0.1095, 0.10951, 0.10952, 0.10953,
      0.10954, 0.10954, 0.10955, 0.10955, 0.10955, 0.10955, 0.10955, 0.10954,
      0.10954, 0.10953, 0.10953, 0.10952, 0.10951, 0.10951, 0.1095, 0.10949,
      0.10948, 0.10947, 0.10946, 0.10945, 0.10944, 0.10943, 0.10942, 0.10941,
      0.1094, 0.10939, 0.10938, 0.10937, 0.10936, 0.10935, 0.10934, 0.10933,
      0.10932, 0.10931, 0.1093
    ),
    SEXO_COD = 1
  )

  waz_girls <- dplyr::tibble(
    IDADE_MESES = 0:60,
    L = c(
      0.3809, 0.1714, 0.0962, 0.0402, -0.005, -0.043, -0.0756, -0.1039, -0.1288,
      -0.1507, -0.1702, -0.1877, -0.2035, -0.2177, -0.2306, -0.2424, -0.2532,
      -0.2631, -0.2723, -0.2808, -0.2888, -0.2962, -0.3032, -0.3097, -0.3159,
      -0.3216, -0.327, -0.3321, -0.3369, -0.3414, -0.3457, -0.3497, -0.3535,
      -0.3571, -0.3605, -0.3637, -0.3668, -0.3696, -0.3724, -0.3749, -0.3774,
      -0.3798, -0.382, -0.3842, -0.3862, -0.3882, -0.3901, -0.3919, -0.3936,
      -0.3953, -0.3969, -0.3984, -0.3999, -0.4013, -0.4027, -0.404, -0.4053,
      -0.4065, -0.4077
    ),
    M = c(
      3.2322, 4.1873, 5.1282, 5.8458, 6.4237, 6.8985, 7.297, 7.6422, 7.9487,
      8.2254, 8.48, 8.7184, 8.9441, 9.1599, 9.368, 9.5695, 9.7655, 9.9568,
      10.144, 10.3275, 10.5078, 10.6852, 10.8598, 11.0322, 11.2024, 11.3706,
      11.5369, 11.7014, 11.8643, 12.0255, 12.1851, 12.3433, 12.5001, 12.6554,
      12.8094, 12.962, 13.1132, 13.2631, 13.4117, 13.5591, 13.7052, 13.8501,
      13.9938, 14.1363, 14.2777, 14.4179, 14.557, 14.6949, 14.8318, 14.9675,
      15.1022, 15.2359, 15.3685, 15.5002, 15.631, 15.7608, 15.8896, 16.0175,
      16.1446
    ),
    S = c(
      0.14171, 0.13724, 0.1304, 0.12619, 0.12322, 0.12104, 0.11935, 0.11794,
      0.11674, 0.11569, 0.11476, 0.11392, 0.11315, 0.11245, 0.11179, 0.11117,
      0.11059, 0.11004, 0.10951, 0.109, 0.10852, 0.10805, 0.1076, 0.10717,
      0.10675, 0.10634, 0.10594, 0.10555, 0.10517, 0.1048, 0.10443, 0.10407,
      0.10371, 0.10335, 0.103, 0.10265, 0.10231, 0.10196, 0.10162, 0.10128,
      0.10094, 0.10061, 0.10027, 0.09994, 0.09961, 0.09928, 0.09895, 0.09863,
      0.0983, 0.09798, 0.09765, 0.09733, 0.09701, 0.09669, 0.09637, 0.09605,
      0.09573, 0.09542, 0.0951
    ),
    SEXO_COD = 2
  )

  dplyr::bind_rows(waz_boys, waz_girls)

}

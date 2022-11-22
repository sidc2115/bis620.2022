
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2022

<!-- badges: start -->

[![R-CMD-check](https://github.com/sidc2115/bis620.2022/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/sidc2115/bis620.2022/actions/workflows/R-CMD-check.yaml)
[![lint](https://github.com/sidc2115/bis620.2022/actions/workflows/lint.yaml/badge.svg)](https://github.com/sidc2115/bis620.2022/actions/workflows/lint.yaml)
[![test-coverage](https://github.com/sidc2115/bis620.2022/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/sidc2115/bis620.2022/actions/workflows/test-coverage.yaml)
[![codecov](https://codecov.io/gh/sidc2115/bis620.2022/branch/main/graph/badge.svg?token=E3EZ0R3IMQ)](https://codecov.io/gh/sidc2115/bis620.2022)
<!-- badges: end -->

The goal of bis620.2022 is to analyse the accelerometry data. The
analysis is by way of making time-series plots from the data. The plots
are in three dimensions. The package can also be used to create spectral
signatures using the modulus of the Fourier coefficients in the
different dimensions.

[Coverage
Page](https://github.com/sidc2115/bis620.2022/actions/workflows/lint.yaml)

[Lint
Results](https://github.com/sidc2115/bis620.2022/actions/workflows/lint.yaml)

## Installation

You can install the development version of bis620.2022 from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("sidc2115/bis620.2022")
```

## Example

Here is a simple use of the package in plotting the spectral signatures:

``` r
library(bis620.2022)

data(ukb_accel)
ukb_accel[1:500, ]|>
  spectral_signature(take_log = TRUE)|>
  accel_plot()
```

<img src="man/figures/README-example1-1.png" width="100%" />

Here we use the package to plot time-series data:

``` r
accel_plot(ukb_accel[1:500, ])
```

<img src="man/figures/README-example2-1.png" width="100%" />

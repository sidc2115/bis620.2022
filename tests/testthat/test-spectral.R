test_that(
  "The accel_plot() returns a ggplot object.",
  {
    data(ukb_accel)
    spectral_signature(ukb_accel[1:100, ], take_log = TRUE)
    p <-  accel_plot(ukb_accel[1:100, ])
    expect_true(inherits(p, "gg"))
  }
)

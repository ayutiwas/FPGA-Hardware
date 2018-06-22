create_clock -name "CLOCK_50" -period 20.0000ns [get_ports {clock_50}]
derive_pll_clocks
derive_clock_uncertainty

- lab1inv_basic
  + av_extracted
  + layout
  + schematic
  + symbol
- lab1inv_basic_sim
  + schematic
  + Purpose: Perform transient simulation and VTC analysis curve on basic
  unit transistor. Used for both pre and post-layout analysis.
  + Test state: For transient analysis, select the lab1inv_basic_transient_state
  test state to load the testing environment used. For VTC DC curve anaylsis,
  select the lab1inv_basic_dc_state.
- lab1inv_basic_2_invs_sim
  + schematic
  + Purpose: Find the optimal inverter size for minimal propagation delay
  through the 2 stage inverter.
  + Test state: Select the lab1inv_basic_2_invs_state test state to load the
  testing environment used.
- lab1inv_narrow
  + av_extracted
  + layout
  + schematic
  + symbol
- lab1inv_four
  + av_extracted
  + layout
  + schematic
  + symbol
- lab1inv_opt_inv_chain
  + av_extracted
  + layout
  + schematic
  + symbol
- lab1inv_opt_inv_chain_sim
  + schematic
  + Purpose: Perform a transient analysis on the chain using the optimally
  sized inverter.
  + Test state: Select the lab1inv_opt_inv_chain_transient test state to load
  the testing environment used.
- lab1inv_opt_inv_chain_wide
  + av_extracted
  + layout
  + schematic
  + symbol
- lab1inv_opt_inv_chain_wide_sim
  + schematic
  + Purpose: Perform a transient analysis on the chain using the optimally
  sized inverter spaced 80um apart from the single inverter.
  + Test state: Select the lab1inv_opt_inv_chain_transient test state to load
  the testing environment used.
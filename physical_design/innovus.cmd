#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Dec 19 12:01:55 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.12-s095_1 (64bit) 11/09/2017 12:10 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.12-s095_1 NR171102-1913/17_12-UB (database version 2.30, 405.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.12-s040 (64bit) 11/09/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.12-s036_1 () Nov  2 2017 09:33:40 ( )
#@(#)CDS: SYNTECH 17.12-s012_1 () Oct 31 2017 04:30:11 ( )
#@(#)CDS: CPE v17.12-s076
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getDrawView
loadWorkspace -name Physical
win
save_global Default.globals
set init_gnd_net {VSS VSSO}
set init_lef_file {../../../../Downloads/scl_pdk/stdlib/fs120/tech_data/lef/tsl180l4.lef ../../../../Downloads/scl_pdk/stdlib/fs120/lef/tsl18fs120_scl.lef ../../../../Downloads/scl_pdk/iolib/cio150/cds/lef/tsl18cio150_4lm.lef}
set init_verilog ../synthesis/fifo_netlist.v
set init_mmmc_file viewDefinition.tcl
set init_io_file fifo_iopad.io
set init_pwr_net {VDD VDDO}
init_design
save_global Default.globals
set init_gnd_net {VSS VSSO}
set init_lef_file {../../../../Downloads/scl_pdk/stdlib/fs120/tech_data/lef/tsl180l4.lef ../../../../Downloads/scl_pdk/stdlib/fs120/lef/tsl18fs120_scl.lef ../../../../Downloads/scl_pdk/iolib/cio150/cds/lef/tsl18cio150_4lm.lef}
set init_verilog ../synthesis/fifo_netlist.v
set init_mmmc_file viewDefinition.tcl
set init_io_file fifo_iopad.io
set init_pwr_net {VDD VDDO}
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -d 1200.0 1200.0 20 20 20 20
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site CoreSite -d 1200.08 1200.08 20.16 20.16 20.16 20.16
uiSetTool select
getIoFlowFlag
fit
fit
fit
fit
fit
fit
fit
addIoFiller -cell pfeed10000 -prefix FILLER -side n
addIoFiller -cell pfeed10000 -prefix FILLER -side e
addIoFiller -cell pfeed10000 -prefix FILLER -side w
addIoFiller -cell pfeed10000 -prefix FILLER -side s
fit
globalNetConnect VDD -type pgpin -pin VDD -override -verbose -netlistOverride
globalNetConnect VSS -type pgpin -pin VSS -override -verbose -netlistOverride
fit
globalNetConnect VDDO -type pgpin -pin VDDO -override -verbose -netlistOverride
globalNetConnect VSSO -type pgpin -pin VSSO -override -verbose -netlistOverride
addRing -skip_via_on_wire_shape Noshape -exclude_selected 1 -skip_via_on_pin Standardcell -center 1 -stacked_via_top_layer TOP_M -type core_rings -jog_distance 0.56 -threshold 0.56 -nets {VDD VSS} -follow core -stacked_via_bottom_layer M1 -layer {bottom M3 top M3 right TOP_M left TOP_M} -width 6 -spacing 2 -offset 2
selectWire 261.0800 261.0800 267.0800 936.7200 4 VDD
deselectAll
selectWire 261.0800 261.0800 267.0800 936.7200 4 VDD
fit
fit
fit
fit
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
sroute -connect {blockPin corePin padPin padRing floatingStripe secondaryPowerPin} -layerChangeRange {M1 TOP_M} -blockPinTarget nearestTarget -padPinPortConnect {allPort oneGeom} -padPinTarget nearestTarget -corePinTarget firstAfterRowEnd -floatingStripeTarget {blockring ring stripe padring ringpin blockpin followpin} -allowjogging 1 -crossoverViaLayerRange {M1 TOP_M} -nets {VDD VSS} -allowLayerChange 1 -blockPin useLef -targetViaLayerRange {M1 TOP_M}
fit
fit
fit
fit
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit TOP_M -max_same_layer_jog_length 0.88 -padcore_ring_bottom_layer_limit M3 -set_to_set_distance 40 -skip_via_on_pin Standardcell -stacked_via_top_layer TOP_M -padcore_ring_top_layer_limit TOP_M -spacing 0.46 -xleft_offset 10 -merge_stripes_value 0.56 -layer TOP_M -block_ring_bottom_layer_limit M3 -width 2 -nets {VDD VSS} -stacked_via_bottom_layer M1
fit
fit
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VSS VDD} -layer M1 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 100 -start_from top -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VSS VDD} -layer M1 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 50 -start_from top -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VSS VDD} -layer M1 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 50 -start_from top -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
deselectAll
selectWire 261.0800 488.5900 938.9600 490.3900 1 VDD
deselectAll
selectWire 253.0800 478.9800 946.9600 480.7800 1 VSS
fit
deselectAll
selectWire 253.0800 729.9700 941.6600 731.7700 3 VSS
get_visible_nets
init_design

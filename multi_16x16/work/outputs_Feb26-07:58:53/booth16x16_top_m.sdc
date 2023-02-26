# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.22-s017_1 on Sun Feb 26 08:01:48 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design booth16x16_top

create_clock -name "VCLK" -period 1.3 -waveform {0.0 0.65} 
group_path -weight 1.000000 -name C2C -from [get_cells booth_enc_neg_flag_reg] -to [get_cells booth_enc_neg_flag_reg]
group_path -weight 1.000000 -name C2O -from [get_cells booth_enc_neg_flag_reg] -to [list \
  [get_ports neg_flag]  \
  [get_ports zero_flag]  \
  [get_ports {PROD_RESULT[31]}]  \
  [get_ports {PROD_RESULT[30]}]  \
  [get_ports {PROD_RESULT[29]}]  \
  [get_ports {PROD_RESULT[28]}]  \
  [get_ports {PROD_RESULT[27]}]  \
  [get_ports {PROD_RESULT[26]}]  \
  [get_ports {PROD_RESULT[25]}]  \
  [get_ports {PROD_RESULT[24]}]  \
  [get_ports {PROD_RESULT[23]}]  \
  [get_ports {PROD_RESULT[22]}]  \
  [get_ports {PROD_RESULT[21]}]  \
  [get_ports {PROD_RESULT[20]}]  \
  [get_ports {PROD_RESULT[19]}]  \
  [get_ports {PROD_RESULT[18]}]  \
  [get_ports {PROD_RESULT[17]}]  \
  [get_ports {PROD_RESULT[16]}]  \
  [get_ports {PROD_RESULT[15]}]  \
  [get_ports {PROD_RESULT[14]}]  \
  [get_ports {PROD_RESULT[13]}]  \
  [get_ports {PROD_RESULT[12]}]  \
  [get_ports {PROD_RESULT[11]}]  \
  [get_ports {PROD_RESULT[10]}]  \
  [get_ports {PROD_RESULT[9]}]  \
  [get_ports {PROD_RESULT[8]}]  \
  [get_ports {PROD_RESULT[7]}]  \
  [get_ports {PROD_RESULT[6]}]  \
  [get_ports {PROD_RESULT[5]}]  \
  [get_ports {PROD_RESULT[4]}]  \
  [get_ports {PROD_RESULT[3]}]  \
  [get_ports {PROD_RESULT[2]}]  \
  [get_ports {PROD_RESULT[1]}]  \
  [get_ports {PROD_RESULT[0]}] ]
group_path -weight 1.000000 -name I2C -from [list \
  [get_ports {A[15]}]  \
  [get_ports {A[14]}]  \
  [get_ports {A[13]}]  \
  [get_ports {A[12]}]  \
  [get_ports {A[11]}]  \
  [get_ports {A[10]}]  \
  [get_ports {A[9]}]  \
  [get_ports {A[8]}]  \
  [get_ports {A[7]}]  \
  [get_ports {A[6]}]  \
  [get_ports {A[5]}]  \
  [get_ports {A[4]}]  \
  [get_ports {A[3]}]  \
  [get_ports {A[2]}]  \
  [get_ports {A[1]}]  \
  [get_ports {A[0]}]  \
  [get_ports {B[15]}]  \
  [get_ports {B[14]}]  \
  [get_ports {B[13]}]  \
  [get_ports {B[12]}]  \
  [get_ports {B[11]}]  \
  [get_ports {B[10]}]  \
  [get_ports {B[9]}]  \
  [get_ports {B[8]}]  \
  [get_ports {B[7]}]  \
  [get_ports {B[6]}]  \
  [get_ports {B[5]}]  \
  [get_ports {B[4]}]  \
  [get_ports {B[3]}]  \
  [get_ports {B[2]}]  \
  [get_ports {B[1]}]  \
  [get_ports {B[0]}]  \
  [get_ports alu_signed] ] -to [get_cells booth_enc_neg_flag_reg]
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports {A[15]}]  \
  [get_ports {A[14]}]  \
  [get_ports {A[13]}]  \
  [get_ports {A[12]}]  \
  [get_ports {A[11]}]  \
  [get_ports {A[10]}]  \
  [get_ports {A[9]}]  \
  [get_ports {A[8]}]  \
  [get_ports {A[7]}]  \
  [get_ports {A[6]}]  \
  [get_ports {A[5]}]  \
  [get_ports {A[4]}]  \
  [get_ports {A[3]}]  \
  [get_ports {A[2]}]  \
  [get_ports {A[1]}]  \
  [get_ports {A[0]}]  \
  [get_ports {B[15]}]  \
  [get_ports {B[14]}]  \
  [get_ports {B[13]}]  \
  [get_ports {B[12]}]  \
  [get_ports {B[11]}]  \
  [get_ports {B[10]}]  \
  [get_ports {B[9]}]  \
  [get_ports {B[8]}]  \
  [get_ports {B[7]}]  \
  [get_ports {B[6]}]  \
  [get_ports {B[5]}]  \
  [get_ports {B[4]}]  \
  [get_ports {B[3]}]  \
  [get_ports {B[2]}]  \
  [get_ports {B[1]}]  \
  [get_ports {B[0]}]  \
  [get_ports alu_signed] ] -to [list \
  [get_ports neg_flag]  \
  [get_ports zero_flag]  \
  [get_ports {PROD_RESULT[31]}]  \
  [get_ports {PROD_RESULT[30]}]  \
  [get_ports {PROD_RESULT[29]}]  \
  [get_ports {PROD_RESULT[28]}]  \
  [get_ports {PROD_RESULT[27]}]  \
  [get_ports {PROD_RESULT[26]}]  \
  [get_ports {PROD_RESULT[25]}]  \
  [get_ports {PROD_RESULT[24]}]  \
  [get_ports {PROD_RESULT[23]}]  \
  [get_ports {PROD_RESULT[22]}]  \
  [get_ports {PROD_RESULT[21]}]  \
  [get_ports {PROD_RESULT[20]}]  \
  [get_ports {PROD_RESULT[19]}]  \
  [get_ports {PROD_RESULT[18]}]  \
  [get_ports {PROD_RESULT[17]}]  \
  [get_ports {PROD_RESULT[16]}]  \
  [get_ports {PROD_RESULT[15]}]  \
  [get_ports {PROD_RESULT[14]}]  \
  [get_ports {PROD_RESULT[13]}]  \
  [get_ports {PROD_RESULT[12]}]  \
  [get_ports {PROD_RESULT[11]}]  \
  [get_ports {PROD_RESULT[10]}]  \
  [get_ports {PROD_RESULT[9]}]  \
  [get_ports {PROD_RESULT[8]}]  \
  [get_ports {PROD_RESULT[7]}]  \
  [get_ports {PROD_RESULT[6]}]  \
  [get_ports {PROD_RESULT[5]}]  \
  [get_ports {PROD_RESULT[4]}]  \
  [get_ports {PROD_RESULT[3]}]  \
  [get_ports {PROD_RESULT[2]}]  \
  [get_ports {PROD_RESULT[1]}]  \
  [get_ports {PROD_RESULT[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[15]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[14]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[13]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[12]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[11]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[10]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[9]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[8]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[7]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[6]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[5]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[4]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[3]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[2]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[1]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[0]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[15]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[14]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[13]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[12]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[11]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[10]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[9]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[8]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[7]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[6]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[5]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[4]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[3]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[2]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[1]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[0]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports alu_signed]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[15]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[14]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[13]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[12]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[11]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[10]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[9]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[8]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[7]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[6]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[5]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[4]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[3]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[2]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[1]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[0]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[15]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[14]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[13]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[12]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[11]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[10]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[9]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[8]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[7]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[6]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[5]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[4]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[3]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[2]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[1]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[0]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports alu_signed]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports neg_flag]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports zero_flag]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[31]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[30]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[29]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[28]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[27]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[26]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[25]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[24]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[23]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[22]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[21]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[20]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[19]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[18]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[17]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[16]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[15]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[14]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[13]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[12]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[11]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[10]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[9]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[8]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_RESULT[0]}]
set_max_fanout 30.000 [current_design]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells fast_vdd1v0/HOLDX1]

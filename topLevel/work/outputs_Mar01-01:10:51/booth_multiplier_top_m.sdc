# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.22-s017_1 on Wed Mar 01 01:11:03 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design booth_multiplier_top

create_clock -name "VCLK" -period 1.3 -waveform {0.0 0.65} 
group_path -weight 1.000000 -name I2O -from [list \
  [get_ports {A[31]}]  \
  [get_ports {A[30]}]  \
  [get_ports {A[29]}]  \
  [get_ports {A[28]}]  \
  [get_ports {A[27]}]  \
  [get_ports {A[26]}]  \
  [get_ports {A[25]}]  \
  [get_ports {A[24]}]  \
  [get_ports {A[23]}]  \
  [get_ports {A[22]}]  \
  [get_ports {A[21]}]  \
  [get_ports {A[20]}]  \
  [get_ports {A[19]}]  \
  [get_ports {A[18]}]  \
  [get_ports {A[17]}]  \
  [get_ports {A[16]}]  \
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
  [get_ports {B[31]}]  \
  [get_ports {B[30]}]  \
  [get_ports {B[29]}]  \
  [get_ports {B[28]}]  \
  [get_ports {B[27]}]  \
  [get_ports {B[26]}]  \
  [get_ports {B[25]}]  \
  [get_ports {B[24]}]  \
  [get_ports {B[23]}]  \
  [get_ports {B[22]}]  \
  [get_ports {B[21]}]  \
  [get_ports {B[20]}]  \
  [get_ports {B[19]}]  \
  [get_ports {B[18]}]  \
  [get_ports {B[17]}]  \
  [get_ports {B[16]}]  \
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
  [get_ports {PRODUCT[63]}]  \
  [get_ports {PRODUCT[62]}]  \
  [get_ports {PRODUCT[61]}]  \
  [get_ports {PRODUCT[60]}]  \
  [get_ports {PRODUCT[59]}]  \
  [get_ports {PRODUCT[58]}]  \
  [get_ports {PRODUCT[57]}]  \
  [get_ports {PRODUCT[56]}]  \
  [get_ports {PRODUCT[55]}]  \
  [get_ports {PRODUCT[54]}]  \
  [get_ports {PRODUCT[53]}]  \
  [get_ports {PRODUCT[52]}]  \
  [get_ports {PRODUCT[51]}]  \
  [get_ports {PRODUCT[50]}]  \
  [get_ports {PRODUCT[49]}]  \
  [get_ports {PRODUCT[48]}]  \
  [get_ports {PRODUCT[47]}]  \
  [get_ports {PRODUCT[46]}]  \
  [get_ports {PRODUCT[45]}]  \
  [get_ports {PRODUCT[44]}]  \
  [get_ports {PRODUCT[43]}]  \
  [get_ports {PRODUCT[42]}]  \
  [get_ports {PRODUCT[41]}]  \
  [get_ports {PRODUCT[40]}]  \
  [get_ports {PRODUCT[39]}]  \
  [get_ports {PRODUCT[38]}]  \
  [get_ports {PRODUCT[37]}]  \
  [get_ports {PRODUCT[36]}]  \
  [get_ports {PRODUCT[35]}]  \
  [get_ports {PRODUCT[34]}]  \
  [get_ports {PRODUCT[33]}]  \
  [get_ports {PRODUCT[32]}]  \
  [get_ports {PRODUCT[31]}]  \
  [get_ports {PRODUCT[30]}]  \
  [get_ports {PRODUCT[29]}]  \
  [get_ports {PRODUCT[28]}]  \
  [get_ports {PRODUCT[27]}]  \
  [get_ports {PRODUCT[26]}]  \
  [get_ports {PRODUCT[25]}]  \
  [get_ports {PRODUCT[24]}]  \
  [get_ports {PRODUCT[23]}]  \
  [get_ports {PRODUCT[22]}]  \
  [get_ports {PRODUCT[21]}]  \
  [get_ports {PRODUCT[20]}]  \
  [get_ports {PRODUCT[19]}]  \
  [get_ports {PRODUCT[18]}]  \
  [get_ports {PRODUCT[17]}]  \
  [get_ports {PRODUCT[16]}]  \
  [get_ports {PRODUCT[15]}]  \
  [get_ports {PRODUCT[14]}]  \
  [get_ports {PRODUCT[13]}]  \
  [get_ports {PRODUCT[12]}]  \
  [get_ports {PRODUCT[11]}]  \
  [get_ports {PRODUCT[10]}]  \
  [get_ports {PRODUCT[9]}]  \
  [get_ports {PRODUCT[8]}]  \
  [get_ports {PRODUCT[7]}]  \
  [get_ports {PRODUCT[6]}]  \
  [get_ports {PRODUCT[5]}]  \
  [get_ports {PRODUCT[4]}]  \
  [get_ports {PRODUCT[3]}]  \
  [get_ports {PRODUCT[2]}]  \
  [get_ports {PRODUCT[1]}]  \
  [get_ports {PRODUCT[0]}] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[31]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[30]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[29]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[28]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[27]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[26]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[25]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[24]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[23]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[22]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[21]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[20]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[19]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[18]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[17]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {A[16]}]
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
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[31]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[30]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[29]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[28]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[27]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[26]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[25]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[24]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[23]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[22]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[21]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[20]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[19]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[18]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[17]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.5332 [get_ports {B[16]}]
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
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[31]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[30]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[29]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[28]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[27]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[26]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[25]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[24]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[23]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[22]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[21]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[20]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[19]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[18]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[17]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {A[16]}]
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
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[31]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[30]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[29]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[28]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[27]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[26]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[25]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[24]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[23]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[22]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[21]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[20]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[19]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[18]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[17]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.2666 [get_ports {B[16]}]
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
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[63]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[62]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[61]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[60]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[59]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[58]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[57]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[56]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[55]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[54]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[53]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[52]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[51]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[50]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[49]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[48]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[47]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[46]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[45]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[44]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[43]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[42]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[41]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[40]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[39]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[38]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[37]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[36]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[35]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[34]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[33]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[32]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[31]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[30]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[29]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[28]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[27]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[26]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[25]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[24]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[23]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[22]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[21]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[20]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[19]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[18]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[17]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[16]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[15]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[14]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[13]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[12]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[11]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[10]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[9]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[8]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PRODUCT[0]}]
set_max_fanout 30.000 [current_design]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells fast_vdd1v0/HOLDX1]

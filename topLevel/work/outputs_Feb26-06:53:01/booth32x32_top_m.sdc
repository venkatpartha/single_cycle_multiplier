# ####################################################################

#  Created by Genus(TM) Synthesis Solution 17.22-s017_1 on Sun Feb 26 07:30:34 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design booth32x32_top

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
  [get_ports {PROD_MSB[31]}]  \
  [get_ports {PROD_MSB[30]}]  \
  [get_ports {PROD_MSB[29]}]  \
  [get_ports {PROD_MSB[28]}]  \
  [get_ports {PROD_MSB[27]}]  \
  [get_ports {PROD_MSB[26]}]  \
  [get_ports {PROD_MSB[25]}]  \
  [get_ports {PROD_MSB[24]}]  \
  [get_ports {PROD_MSB[23]}]  \
  [get_ports {PROD_MSB[22]}]  \
  [get_ports {PROD_MSB[21]}]  \
  [get_ports {PROD_MSB[20]}]  \
  [get_ports {PROD_MSB[19]}]  \
  [get_ports {PROD_MSB[18]}]  \
  [get_ports {PROD_MSB[17]}]  \
  [get_ports {PROD_MSB[16]}]  \
  [get_ports {PROD_MSB[15]}]  \
  [get_ports {PROD_MSB[14]}]  \
  [get_ports {PROD_MSB[13]}]  \
  [get_ports {PROD_MSB[12]}]  \
  [get_ports {PROD_MSB[11]}]  \
  [get_ports {PROD_MSB[10]}]  \
  [get_ports {PROD_MSB[9]}]  \
  [get_ports {PROD_MSB[8]}]  \
  [get_ports {PROD_MSB[7]}]  \
  [get_ports {PROD_MSB[6]}]  \
  [get_ports {PROD_MSB[5]}]  \
  [get_ports {PROD_MSB[4]}]  \
  [get_ports {PROD_MSB[3]}]  \
  [get_ports {PROD_MSB[2]}]  \
  [get_ports {PROD_MSB[1]}]  \
  [get_ports {PROD_MSB[0]}]  \
  [get_ports {PROD_LSB[31]}]  \
  [get_ports {PROD_LSB[30]}]  \
  [get_ports {PROD_LSB[29]}]  \
  [get_ports {PROD_LSB[28]}]  \
  [get_ports {PROD_LSB[27]}]  \
  [get_ports {PROD_LSB[26]}]  \
  [get_ports {PROD_LSB[25]}]  \
  [get_ports {PROD_LSB[24]}]  \
  [get_ports {PROD_LSB[23]}]  \
  [get_ports {PROD_LSB[22]}]  \
  [get_ports {PROD_LSB[21]}]  \
  [get_ports {PROD_LSB[20]}]  \
  [get_ports {PROD_LSB[19]}]  \
  [get_ports {PROD_LSB[18]}]  \
  [get_ports {PROD_LSB[17]}]  \
  [get_ports {PROD_LSB[16]}]  \
  [get_ports {PROD_LSB[15]}]  \
  [get_ports {PROD_LSB[14]}]  \
  [get_ports {PROD_LSB[13]}]  \
  [get_ports {PROD_LSB[12]}]  \
  [get_ports {PROD_LSB[11]}]  \
  [get_ports {PROD_LSB[10]}]  \
  [get_ports {PROD_LSB[9]}]  \
  [get_ports {PROD_LSB[8]}]  \
  [get_ports {PROD_LSB[7]}]  \
  [get_ports {PROD_LSB[6]}]  \
  [get_ports {PROD_LSB[5]}]  \
  [get_ports {PROD_LSB[4]}]  \
  [get_ports {PROD_LSB[3]}]  \
  [get_ports {PROD_LSB[2]}]  \
  [get_ports {PROD_LSB[1]}]  \
  [get_ports {PROD_LSB[0]}] ]
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
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[31]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[30]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[29]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[28]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[27]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[26]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[25]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[24]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[23]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[22]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[21]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[20]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[19]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[18]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[17]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[16]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[15]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[14]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[13]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[12]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[11]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[10]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[9]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[8]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_MSB[0]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[31]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[30]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[29]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[28]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[27]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[26]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[25]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[24]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[23]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[22]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[21]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[20]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[19]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[18]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[17]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[16]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[15]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[14]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[13]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[12]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[11]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[10]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[9]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[8]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.1333 [get_ports {PROD_LSB[0]}]
set_max_fanout 30.000 [current_design]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells fast_vdd1v0/HOLDX1]

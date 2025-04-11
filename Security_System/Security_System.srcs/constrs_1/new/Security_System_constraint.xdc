# set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports{clock}]
# set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports{reset}]
# set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports{LED}]

set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports btnC]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports LED1]
set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVCMOS33 } [get_ports LED2]

 set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports btnC]
set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports btnU]
set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports btnL]
set_property -dict { PACKAGE_PIN T17   IOSTANDARD LVCMOS33 } [get_ports btnR]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports btnD]

set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports switch]
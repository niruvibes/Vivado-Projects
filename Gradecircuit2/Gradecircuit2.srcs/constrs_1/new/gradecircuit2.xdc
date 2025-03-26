set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports {L}]
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports {F}]
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 } [get_ports {M}]
set_property -dict { PACKAGE_PIN W17 IOSTANDARD LVCMOS33 } [get_ports {A}]
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports {P}]

set_property CONFIG_VOLTAGE 3.3 {current_design}
set_property CFGBVS VCCO {current_design}
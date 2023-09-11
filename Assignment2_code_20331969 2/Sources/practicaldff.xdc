## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports CCLK]							
	set_property IOSTANDARD LVCMOS33 [get_ports CCLK]
 

set_property PACKAGE_PIN U16 [get_ports {LED[3]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property PACKAGE_PIN E19 [get_ports {LED[4]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
set_property PACKAGE_PIN U19 [get_ports {LED[5]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
set_property PACKAGE_PIN V19 [get_ports {LED[6]}]				
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
set_property PACKAGE_PIN W18 [get_ports {LED[7]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
set_property PACKAGE_PIN U15 [get_ports {LED[8]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
set_property PACKAGE_PIN U14 [get_ports {LED[9]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
set_property PACKAGE_PIN V14 [get_ports {LED[10]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]
set_property PACKAGE_PIN V13 [get_ports {LED[11]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]
set_property PACKAGE_PIN V3 [get_ports {LED[12]}]				
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]
set_property PACKAGE_PIN W3 [get_ports {LED[13]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]
set_property PACKAGE_PIN U3 [get_ports {LED[14]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]
    set_property PACKAGE_PIN P3 [get_ports {LED[15]}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]
set_property PACKAGE_PIN N3 [get_ports {LED[16]}]				
    set_property IOSTANDARD LVCMOS33 [get_ports {LED[16]}]

set_property PACKAGE_PIN L1 [get_ports {screen}]					
    set_property IOSTANDARD LVCMOS33 [get_ports {screen}]

##Buttons

set_property PACKAGE_PIN V17 [get_ports {ENGAGE}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {ENGAGE}]
set_property PACKAGE_PIN V16 [get_ports {RESET}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {RESET}]

##7 segment display - Cathode pins
set_property PACKAGE_PIN W7 [get_ports {led_out[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[6]}]
set_property PACKAGE_PIN W6 [get_ports {led_out[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[5]}]
set_property PACKAGE_PIN U8 [get_ports {led_out[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[4]}]
set_property PACKAGE_PIN V8 [get_ports {led_out[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[3]}]
set_property PACKAGE_PIN U5 [get_ports {led_out[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[2]}]
set_property PACKAGE_PIN V5 [get_ports {led_out[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[1]}]
set_property PACKAGE_PIN U7 [get_ports {led_out[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {led_out[0]}]


#Anode Selects
set_property PACKAGE_PIN U2 [get_ports {anode_sel[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode_sel[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode_sel[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode_sel[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {anode_sel[3]}]



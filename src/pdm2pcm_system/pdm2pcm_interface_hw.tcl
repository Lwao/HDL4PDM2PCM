# TCL File Generated by Component Editor 21.1
# Mon Jul 25 20:43:15 GFT 2022
# DO NOT MODIFY


# 
# pdm2pcm_interface "pdm2pcm_interface" v1.0
# github.com/Lwao 2022.07.25.20:43:15
# Hardware PDM to PCM covnersion
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module pdm2pcm_interface
# 
set_module_property DESCRIPTION "Hardware PDM to PCM covnersion"
set_module_property NAME pdm2pcm_interface
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR github.com/Lwao
set_module_property DISPLAY_NAME pdm2pcm_interface
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL pdm2pcm
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file base2_mod.vhd VHDL PATH base2_mod.vhd
add_fileset_file cic.vhd VHDL PATH cic.vhd
add_fileset_file clkdiv.vhd VHDL PATH clkdiv.vhd
add_fileset_file comb.vhd VHDL PATH comb.vhd
add_fileset_file combn.vhd VHDL PATH combn.vhd
add_fileset_file config_regn.vhd VHDL PATH config_regn.vhd
add_fileset_file countern.vhd VHDL PATH countern.vhd
add_fileset_file downsampling.vhd VHDL PATH downsampling.vhd
add_fileset_file input_interface.vhd VHDL PATH input_interface.vhd
add_fileset_file input_interface_fifo.vhd VHDL PATH input_interface_fifo.vhd
add_fileset_file integrator.vhd VHDL PATH integrator.vhd
add_fileset_file integratorn.vhd VHDL PATH integratorn.vhd
add_fileset_file mux2.vhd VHDL PATH mux2.vhd
add_fileset_file mux4.vhd VHDL PATH mux4.vhd
add_fileset_file osr_sel.vhd VHDL PATH osr_sel.vhd
add_fileset_file output_interface.vhd VHDL PATH output_interface.vhd
add_fileset_file output_interface_fifo.vhd VHDL PATH output_interface_fifo.vhd
add_fileset_file pdm2pcm.vhd VHDL PATH pdm2pcm.vhd TOP_LEVEL_FILE
add_fileset_file regn.vhd VHDL PATH regn.vhd
add_fileset_file shift_regn.vhd VHDL PATH shift_regn.vhd
add_fileset_file subn.vhd VHDL PATH subn.vhd
add_fileset_file sumn.vhd VHDL PATH sumn.vhd

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL pdm2pcm
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file base2_mod.vhd VHDL PATH base2_mod.vhd
add_fileset_file cic.vhd VHDL PATH cic.vhd
add_fileset_file clkdiv.vhd VHDL PATH clkdiv.vhd
add_fileset_file comb.vhd VHDL PATH comb.vhd
add_fileset_file combn.vhd VHDL PATH combn.vhd
add_fileset_file config_regn.vhd VHDL PATH config_regn.vhd
add_fileset_file countern.vhd VHDL PATH countern.vhd
add_fileset_file downsampling.vhd VHDL PATH downsampling.vhd
add_fileset_file input_interface.vhd VHDL PATH input_interface.vhd
add_fileset_file input_interface_fifo.vhd VHDL PATH input_interface_fifo.vhd
add_fileset_file integrator.vhd VHDL PATH integrator.vhd
add_fileset_file integratorn.vhd VHDL PATH integratorn.vhd
add_fileset_file mux2.vhd VHDL PATH mux2.vhd
add_fileset_file mux4.vhd VHDL PATH mux4.vhd
add_fileset_file osr_sel.vhd VHDL PATH osr_sel.vhd
add_fileset_file output_interface.vhd VHDL PATH output_interface.vhd
add_fileset_file output_interface_fifo.vhd VHDL PATH output_interface_fifo.vhd
add_fileset_file pdm2pcm.vhd VHDL PATH pdm2pcm.vhd
add_fileset_file regn.vhd VHDL PATH regn.vhd
add_fileset_file shift_regn.vhd VHDL PATH shift_regn.vhd
add_fileset_file subn.vhd VHDL PATH subn.vhd
add_fileset_file sumn.vhd VHDL PATH sumn.vhd


# 
# parameters
# 
add_parameter word_width INTEGER 32
set_parameter_property word_width DEFAULT_VALUE 32
set_parameter_property word_width DISPLAY_NAME word_width
set_parameter_property word_width TYPE INTEGER
set_parameter_property word_width UNITS None
set_parameter_property word_width ALLOWED_RANGES -2147483648:2147483647
set_parameter_property word_width HDL_PARAMETER true


# 
# display items
# 


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock clock_sink
set_interface_property conduit_end associatedReset reset_sink
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end CMSIS_SVD_VARIABLES ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end pdm_stream export Input 1
add_interface_port conduit_end pdm_clock export Output 1


# 
# connection point avalon_slave_config
# 
add_interface avalon_slave_config avalon end
set_interface_property avalon_slave_config addressUnits WORDS
set_interface_property avalon_slave_config associatedClock clock_sink
set_interface_property avalon_slave_config associatedReset reset_sink
set_interface_property avalon_slave_config bitsPerSymbol 8
set_interface_property avalon_slave_config burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_config burstcountUnits WORDS
set_interface_property avalon_slave_config explicitAddressSpan 0
set_interface_property avalon_slave_config holdTime 0
set_interface_property avalon_slave_config linewrapBursts false
set_interface_property avalon_slave_config maximumPendingReadTransactions 0
set_interface_property avalon_slave_config maximumPendingWriteTransactions 0
set_interface_property avalon_slave_config readLatency 0
set_interface_property avalon_slave_config readWaitTime 1
set_interface_property avalon_slave_config setupTime 0
set_interface_property avalon_slave_config timingUnits Cycles
set_interface_property avalon_slave_config writeWaitTime 0
set_interface_property avalon_slave_config ENABLED true
set_interface_property avalon_slave_config EXPORT_OF ""
set_interface_property avalon_slave_config PORT_NAME_MAP ""
set_interface_property avalon_slave_config CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_config SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_config en_vec writebyteenable_n Input 2
add_interface_port avalon_slave_config config_reg_out readdata Output 24
add_interface_port avalon_slave_config rdreq read Input 1
add_interface_port avalon_slave_config config_reg_in writedata Input 24
set_interface_assignment avalon_slave_config embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_config embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink rst reset_n Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clk clk Input 1


# 
# connection point avalon_slave_data
# 
add_interface avalon_slave_data avalon end
set_interface_property avalon_slave_data addressUnits WORDS
set_interface_property avalon_slave_data associatedClock clock_sink
set_interface_property avalon_slave_data associatedReset reset_sink
set_interface_property avalon_slave_data bitsPerSymbol 8
set_interface_property avalon_slave_data burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_data burstcountUnits WORDS
set_interface_property avalon_slave_data explicitAddressSpan 0
set_interface_property avalon_slave_data holdTime 0
set_interface_property avalon_slave_data linewrapBursts false
set_interface_property avalon_slave_data maximumPendingReadTransactions 0
set_interface_property avalon_slave_data maximumPendingWriteTransactions 0
set_interface_property avalon_slave_data readLatency 0
set_interface_property avalon_slave_data readWaitTime 1
set_interface_property avalon_slave_data setupTime 0
set_interface_property avalon_slave_data timingUnits Cycles
set_interface_property avalon_slave_data writeWaitTime 0
set_interface_property avalon_slave_data ENABLED true
set_interface_property avalon_slave_data EXPORT_OF ""
set_interface_property avalon_slave_data PORT_NAME_MAP ""
set_interface_property avalon_slave_data CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_data SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_data pcm_output readdata Output word_width
set_interface_assignment avalon_slave_data embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_data embeddedsw.configuration.isPrintableDevice 0


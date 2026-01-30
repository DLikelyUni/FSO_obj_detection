load C:/Xilinx/2025.1/Vivado/lib/win64.o/librdi_dsp_tcltasks.dll
cd {C:/Users/fsb21125/FSO_obj_detection/wavedata}
dsp_wave_convert {obj_detection.wfv} 
set_param project.waveformStandaloneMode 1
start_gui
current_fileset
dsp_register_design_manager
dsp_open_waveform {obj_detection.wdb}
open_wave_config {obj_detection.wcfg}
source C:/Xilinx/2025.1/Model_Composer/scripts/sysgen/tcl/SgPaSlaveInterp.tcl

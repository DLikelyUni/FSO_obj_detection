load /home/duncan/Documents/Xilinx/2025.1/Vivado/lib/lnx64.o/librdi_dsp_tcltasks.so
cd {/home/duncan/Documents/FSO_obj_detection/wavedata}
dsp_wave_convert {obj_detection.wfv} 
set_param project.waveformStandaloneMode 1
start_gui
current_fileset
dsp_register_design_manager
dsp_open_waveform {obj_detection.wdb}
open_wave_config {obj_detection.wcfg}
source /home/duncan/Documents/Xilinx/2025.1/Model_Composer/scripts/sysgen/tcl/SgPaSlaveInterp.tcl

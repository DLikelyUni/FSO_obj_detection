set_param board.repoPaths "C:/Xilinx/2025.1/Vivado/data/xhub/boards"
load librdi_dsp_tcltasks.dll
dsp_write_board_objects -dirpath C:/Xilinx/2025.1/Model_Composer/data -csv
dsp_write_part_objects -dirpath C:/Xilinx/2025.1/Model_Composer/data
exit

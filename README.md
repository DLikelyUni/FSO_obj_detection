

##  Setting up board files

Ultra 96 board definition file (bdf) is provided by Avnet [here] (https://github.com/Avnet/bdf), this needs to be added to be installed so it is accessible by Model Composer and vivado.  
This can be done by navigating to *<install location>/Xilinx/<version>/data/xhub/boards/XilinxBoardStore/boards/* then running the following commands:
'$ mkdir Avnet'

'$ git clone https://github.com/Avnet/bdf .'

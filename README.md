## Setting up simulink model composer files

Required Software
<ul>
<li>Matlab 2025a </li> 
<li>Simulink 2025a</li>
<li>Vivado</li>
<li>Vitis Model Composer 2025.1</li>
</ul>

Within Simulink once the Video\_Processor model is loaded, to allow for auto loading of parameters and values of scripts, select the modeling tab of simulink then select model properties from the model settings dropdown menu.
Within model properties go to the Callbacks tab and select the pre-load function (PreLoadFcn) and alter the function to include the full path to the install location.
For use on windows 
> if ispc
>   cd C:\\<path to file\>\\FSO\_obj\_detection
> elseif isunix
>   cd ~/Documents/FSO\_obj\_detection
> end
> setup
For use on Linux  
> if ispc
>   cd C:\\Users\\name\\Documents\\FSO\_obj\_detection
> elseif isunix
>   cd ~/\<path to file\>/FSO\_obj\_detection
> end
> setup


##  Setting up board files

Ultra 96 board definition file (bdf) is provided by Avnet [here] (https://github.com/Avnet/bdf), this needs to be added to be installed so it is accessible by Model Composer and vivado.  
This can be done by navigating to *<install location>/Xilinx/<version>/data/xhub/boards/XilinxBoardStore/boards/* then running the following commands:
>'$ mkdir Avnet'

>'$ git clone https://github.com/Avnet/bdf .'

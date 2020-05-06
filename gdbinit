define zynq-connect
  target remote :3333
end

define zynq-fsbl-restart
 mon xilinx_ps7_init
end

define zynq-restart
 mon xilinx_ps7_init
 #mon load_image /my/path/fsbl.elf 0x00000000 elf
 mon resume 0
 mon sleep 2000
 mon halt
end

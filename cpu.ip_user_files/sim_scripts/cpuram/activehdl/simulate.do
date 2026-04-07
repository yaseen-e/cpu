transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cpuram  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cpuram xil_defaultlib.glbl

do {cpuram.udo}

run 1000ns

endsim

quit -force

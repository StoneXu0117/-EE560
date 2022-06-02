
# ee560_debounce_DPB_SCEN_CCEN_MCEN.do

vlib work
vcom +acc  "ee560_debounce_DPB_SCEN_CCEN_MCEN.vhd"
vcom +acc  "ee560_debounce_DPB_SCEN_CCEN_MCEN_tb.vhd"
vsim -novopt -t 1ps -lib work ee560_debounce_DPB_SCEN_CCEN_MCEN_tb
view wave
view structure
view signals
log -r *
do {ee560_debounce_DPB_SCEN_CCEN_MCEN_wave.do}
run 9us
WaveRestoreCursors {{Cursor 1} {215000 ps} 0}
WaveRestoreZoom {0 ps} {1000000 ps}
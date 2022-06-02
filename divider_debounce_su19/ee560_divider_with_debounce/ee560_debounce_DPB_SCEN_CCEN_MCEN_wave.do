onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/clk_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/resetb_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/PB_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/DPB_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/SCEN_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/MCEN_tb
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/CCEN_tb
add wave -noupdate -radix unsigned /ee560_debounce_dpb_scen_ccen_mcen_tb/UUT/debounce_count
add wave -noupdate -radix unsigned /ee560_debounce_dpb_scen_ccen_mcen_tb/UUT/MCEN_count
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/UUT/d_state
add wave -noupdate /ee560_debounce_dpb_scen_ccen_mcen_tb/clock_count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {230000 ps} 0}
configure wave -namecolwidth 164
configure wave -valuecolwidth 63
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {974705 ps}

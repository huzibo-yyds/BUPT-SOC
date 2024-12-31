debImport "-full64"
simSetSimulator "-vcssv" -exec \
           "/home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim/simv" -args \
           "-gui +neg_tchk +maxdelays +notimingcheck +nospecify +vc +v2k -ucli"
nsMsgSwitchTab -tab general
debImport "-dbdir" \
          "/home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim/simv.daidir"
debLoadSimResult /home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim/e203.fsdb
wvCreateWindow
srcHBSelect "tb_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top" -delim "."
srcHBDrag -win $_nTrace1
srcHBSelect "tb_top.u_e203_soc_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top.u_e203_soc_top" -delim "."
srcHBSelect "tb_top.u_e203_soc_top" -win $_nTrace1
srcHBSelect "tb_top.u_e203_soc_top.u_e203_subsys_top" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_top.u_e203_soc_top.u_e203_subsys_top" -delim "."
srcHBSelect "tb_top.u_e203_soc_top.u_e203_subsys_top" -win $_nTrace1
srcHBSelect "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main" -win \
           $_nTrace1
srcHBSelect "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main" -win \
           $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main" -delim \
           "."
srcHBSelect "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main" -win \
           $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top" \
           -delim "."
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams" \
           -delim "."
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -delim "."
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -delim "."
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -delim "."
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {u_e203_dtcm_ram}
wvAddSignal -win $_nWave2 \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/sd" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/ds" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/ls" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/cs" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/we" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/addr\[13:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/wem\[3:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/din\[31:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/dout\[31:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/rst_n" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_dtcm_ram/clk"
wvSetPosition -win $_nWave2 {("u_e203_dtcm_ram" 0)}
wvSetPosition -win $_nWave2 {("u_e203_dtcm_ram" 11)}
wvSetPosition -win $_nWave2 {("u_e203_dtcm_ram" 11)}
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("u_e203_dtcm_ram" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {u_e203_itcm_ram}
wvAddSignal -win $_nWave2 \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/sd" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/ds" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/ls" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/cs" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/we" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/addr\[12:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/wem\[7:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/din\[63:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/dout\[63:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/rst_n" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/clk"
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 0)}
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 11)}
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 11)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectGroup -win $_nWave2 {u_e203_dtcm_ram}
wvSelectGroup -win $_nWave2 {u_e203_dtcm_ram}
wvSelectGroup -win $_nWave2 {u_e203_itcm_ram}
wvSelectSignal -win $_nWave2 {( "u_e203_dtcm_ram" 11 )} 
wvSelectGroup -win $_nWave2 {u_e203_itcm_ram}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("u_e203_dtcm_ram" 11)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {u_e203_dtcm_ram}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectGroup -win $_nWave2 {u_e203_dtcm_ram}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_dtcm_ram" \
           -win $_nTrace1
srcHBSelect \
           "tb_top.u_e203_soc_top.u_e203_subsys_top.u_e203_subsys_main.u_e203_cpu_top.u_e203_srams.u_e203_itcm_ram" \
           -win $_nTrace1
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G3} {u_e203_itcm_ram}
wvAddSignal -win $_nWave2 \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/sd" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/ds" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/ls" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/cs" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/we" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/addr\[12:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/wem\[7:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/din\[63:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/dout\[63:0\]" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/rst_n" \
           "/tb_top/u_e203_soc_top/u_e203_subsys_top/u_e203_subsys_main/u_e203_cpu_top/u_e203_srams/u_e203_itcm_ram/clk"
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 0)}
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 11)}
wvSetPosition -win $_nWave2 {("u_e203_itcm_ram" 11)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {63 63 1 2 1 1}
srcTBAddBrkPnt -win $_nTrace1 -line 63 -file \
           /home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim/rtl/e203/core/e203_dtcm_ram.v
wvSetCursor -win $_nWave2 41921789.310959 -snap {("u_e203_itcm_ram" 8)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2

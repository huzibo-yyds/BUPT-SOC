debImport "-full64"
simSetSimulator "-vcssv" -exec \
           "/home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim_org/simv" -args \
           "-gui +neg_tchk +maxdelays +notimingcheck +nospecify +vc +v2k -ucli"
nsMsgSwitchTab -tab general
debImport "-dbdir" \
          "/home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim_org/simv.daidir"
debLoadSimResult /home/huzi/Soc/risc-v/20241209_V1.0_group9/pre_sim_org/e203.fsdb
wvCreateWindow
wvSetCursor -win $_nWave2 1653861.328437
verdiDockWidgetSetCurTab -dock windowDock_OneSearch
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSetCursor -win $_nWave2 1626479.518363
wvSelectGroup -win $_nWave2 {G1}
wvSetCursor -win $_nWave2 1434806.847849
wvSetCursor -win $_nWave2 3666101.156556
wvSelectGroup -win $_nWave2 {G1}
srcDeselectAll -win $_nTrace1
srcHBDrag -win $_nTrace1
wvRenameGroup -win $_nWave2 {G1} {sirv_gnrl_ltch}
wvAddSignal -win $_nWave2 "/sirv_gnrl_ltch/lden" "/sirv_gnrl_ltch/dnxt\[31:0\]" \
           "/sirv_gnrl_ltch/qout\[31:0\]"
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 0)}
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 3)}
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 3)}
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvRenameGroup -win $_nWave2 {G2} {u_e203_soc_top}
wvAddSignal -win $_nWave2 "/tb_top/u_e203_soc_top/hfextclk" \
           "/tb_top/u_e203_soc_top/hfxoscen" "/tb_top/u_e203_soc_top/lfextclk" \
           "/tb_top/u_e203_soc_top/lfxoscen" \
           "/tb_top/u_e203_soc_top/io_pads_jtag_TCK_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_jtag_TMS_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_jtag_TDI_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_jtag_TDO_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_jtag_TDO_o_oe" \
           "/tb_top/u_e203_soc_top/io_pads_gpioA_i_ival\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_gpioA_o_oval\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_gpioA_o_oe\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_gpioB_i_ival\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_gpioB_o_oval\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_gpioB_o_oe\[31:0\]" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_sck_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_cs_0_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_0_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_0_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_0_o_oe" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_1_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_1_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_1_o_oe" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_2_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_2_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_2_o_oe" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_3_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_3_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_qspi0_dq_3_o_oe" \
           "/tb_top/u_e203_soc_top/io_pads_aon_erst_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_dbgmode0_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_dbgmode1_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_dbgmode2_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_bootrom_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_aon_pmu_dwakeup_n_i_ival" \
           "/tb_top/u_e203_soc_top/io_pads_aon_pmu_padrst_o_oval" \
           "/tb_top/u_e203_soc_top/io_pads_aon_pmu_vddpaden_o_oval"
wvSetPosition -win $_nWave2 {("u_e203_soc_top" 0)}
wvSetPosition -win $_nWave2 {("u_e203_soc_top" 37)}
wvSetPosition -win $_nWave2 {("u_e203_soc_top" 37)}
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 0)}
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch" 0)}
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch/sirv_gnrl_icb32towishb8" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {sirv_gnrl_icb32towishb8}
wvAddSignal -win $_nWave2 "/sirv_gnrl_icb32towishb8/i_icb_cmd_valid" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_ready" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_read\[0:0\]" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_addr\[31:0\]" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_wdata\[31:0\]" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_wmask\[3:0\]" \
           "/sirv_gnrl_icb32towishb8/i_icb_cmd_size\[1:0\]" \
           "/sirv_gnrl_icb32towishb8/i_icb_rsp_valid" \
           "/sirv_gnrl_icb32towishb8/i_icb_rsp_ready" \
           "/sirv_gnrl_icb32towishb8/i_icb_rsp_err" \
           "/sirv_gnrl_icb32towishb8/i_icb_rsp_rdata\[31:0\]" \
           "/sirv_gnrl_icb32towishb8/wb_adr\[31:0\]" \
           "/sirv_gnrl_icb32towishb8/wb_dat_w\[7:0\]" \
           "/sirv_gnrl_icb32towishb8/wb_dat_r\[7:0\]" \
           "/sirv_gnrl_icb32towishb8/wb_we" "/sirv_gnrl_icb32towishb8/wb_stb" \
           "/sirv_gnrl_icb32towishb8/wb_cyc" "/sirv_gnrl_icb32towishb8/wb_ack" \
           "/sirv_gnrl_icb32towishb8/clk" "/sirv_gnrl_icb32towishb8/rst_n"
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch/sirv_gnrl_icb32towishb8" 0)}
wvSetPosition -win $_nWave2 {("sirv_gnrl_ltch/sirv_gnrl_icb32towishb8" 20)}
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 7272191.728704 -snap {("sirv_gnrl_icb32towishb8" 19)}
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
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
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
wvScrollUp -win $_nWave2 13
wvScrollDown -win $_nWave2 17
wvScrollUp -win $_nWave2 14
srcHBSelect "tb_top" -win $_nTrace1
srcHBSelect "tb_top.u_e203_soc_top" -win $_nTrace1
srcHBSelect "sirv_gnrl_ltch" -win $_nTrace1
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>

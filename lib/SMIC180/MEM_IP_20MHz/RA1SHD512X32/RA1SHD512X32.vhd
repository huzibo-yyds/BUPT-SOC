--------------------------------------------------------------------------
--      CONFIDENTIAL  AND  PROPRIETARY SOFTWARE OF ARM Physical IP, INC.
--      
--      Copyright (c) 1993-2002  ARM Physical IP, Inc.  All  Rights Reserved.
--      
--      Use of this Software is subject to the terms and conditions  of the
--      applicable license agreement with ARM Physical IP, Inc.  In addition,
--      this Software is protected by patents, copyright law and international
--      treaties.
--      
--      The copyright notice(s) in this Software does not indicate actual or
--      intended publication of this Software.
--      
--      name:			High Speed/Density Single-Port SRAM
--           			SMIC 0.18um Logic018 Process
--      version:		2005Q3V1
--      comment:		
--      configuration:	 -instname RA1SHD512X32 -words 512 -bits 32 -frequency 20 -ring_width 2 -mux 4 -drive 12 -write_mask on -wp_size 8 -top_layer met6 -power_type rings -horiz met3 -vert met4 -cust_comment "" -left_bus_delim "[" -right_bus_delim "]" -pwr_gnd_rename "VDD:VDD,GND:VSS" -prefix "" -pin_space 0.0 -name_case upper -check_instname on -diodes on -inside_ring_type GND -asvm on
--
--      VHDL model for Synchronous Single-Port Ram
--
--      Instance:       RA1SHD512X32
--      Address Length: 512
--      Word Width:     32
--      Pipeline:       No
--
--      Creation Date:  2002-06-03 13:09:56Z
--      Version:        2005Q3V1
--
--      Verified With:  Model Technology VCOM V-System VHDL
--			Version 5.2c
--
--      Modeling Assumptions: This model supports full gate-level simulaton
--          including proper x-handling and timing check behavior.  It is
--          VITAL_LEVEL1 compliant.  Unit delay timing is included in the
--          model. Back-annotation of SDF (v2.1) is supported.  SDF can be
--          created utilyzing the delay calculation views provided with this
--          generator and supported delay calculators.  For netlisting
--          simplicity, buses are not exploded.  All buses are modeled
--          [MSB:LSB].  To operate properly, this model must be used with the
--          Artisan's Vhdl packages.
--
--      Modeling Limitations: To be compatible with Synopsys/VSS in term of
--	    SDF back-annotation, this model has to be Vital Level0 compliant.
--	    This feature may result in degraded performances.
--
--      Known Bugs: None.
--
--      Known Work Arounds: N/A
--------------------------------------------------------------------------
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 

Package RA1SHD512X32_pkgs is
  component rdwr_RA1SHD512X32
    generic(
	TimingChecksOn: BOOLEAN := TRUE;
	tperiod_CLK  : VitalDelayType;
	tpw_CLK_negedge: VitalDelayType;
	tpw_CLK_posedge: VitalDelayType;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayArrayType01(3 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_A: VitalDelayArrayType01(8 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(31 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_OEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	tpd_OEN_Q	: VitalDelayArrayType01Z(31 downto 0) := (others => (1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns));
	tpd_CLK_Q	: VitalDelayArrayType01Z(31 downto 0) := (others => (1.0 ns, 1.0 ns, 0.50 ns, 1.0 ns, 0.50 ns, 1.0 ns));
	PortName	: string
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic_vector(3 downto 0);
	A: in std_logic_vector(8 downto 0);
	D: in std_logic_vector(31 downto 0);
	OEN: in std_logic;
	Q: out std_logic_vector(31 downto 0);
	Read: out std_logic:='0';
	Write: out std_logic:='0';
	GtpRst  : in std_logic;
	Am  : out std_logic_vector;
	Bm  : out std_logic_vector;
	Dm  : out std_logic_vector;
	Qi  : in std_logic_vector
    );
end component; 
 component RA1SHD512X32
    generic(
	tperiod_CLK  : VitalDelayType := 2.000 ns;
	tpw_CLK_negedge: VitalDelayType := 1.000 ns;
	tpw_CLK_posedge: VitalDelayType := 1.000 ns;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayArrayType01(3 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_A: VitalDelayArrayType01(8 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(31 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_OEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));

	tpd_CLK_Q: VitalDelayArrayType01Z(31 downto 0):=(others=>(1.0 ns,1.0 ns,0.50 ns,1.0 ns,0.50 ns,1.0 ns));
	tpd_OEN_Q: VitalDelayArrayType01Z(31 downto 0):=(others=>(1.0 ns,1.0 ns,0.50 ns,1.0 ns,0.50 ns,1.0 ns));
	TimingChecksOn: BOOLEAN := TRUE
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic_vector(3 downto 0);
	A: in std_logic_vector(8 downto 0);
	D: in std_logic_vector(31 downto 0);
	OEN: in std_logic;
	Q: out std_logic_vector(31 downto 0)
    );
 end component; 
End RA1SHD512X32_pkgs;
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 
use WORK.lib_cells_pkgs.all;
use WORK.RA1SHD512X32_pkgs.all;

  entity rdwr_RA1SHD512X32 is
    generic(
	TimingChecksOn: BOOLEAN := TRUE;
	tperiod_CLK  : VitalDelayType;
	tpw_CLK_negedge: VitalDelayType;
	tpw_CLK_posedge: VitalDelayType;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayArrayType01(3 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_A: VitalDelayArrayType01(8 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(31 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_OEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	tpd_OEN_Q	: VitalDelayArrayType01Z(31 downto 0) := (others => (1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns, 1.0 ns));
	tpd_CLK_Q	: VitalDelayArrayType01Z(31 downto 0) := (others => (1.0 ns, 1.0 ns, 0.50 ns, 1.0 ns, 0.50 ns, 1.0 ns));
	PortName	: string
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic_vector(3 downto 0);
	A: in std_logic_vector(8 downto 0);
	D: in std_logic_vector(31 downto 0);
	OEN: in std_logic;
	Q: out std_logic_vector(31 downto 0);
	Read: out std_logic:='0';
	Write: out std_logic:='0';
	GtpRst  : in std_logic;
	Am  : out std_logic_vector;
	Bm  : out std_logic_vector;
	Dm  : out std_logic_vector;
	Qi  : in std_logic_vector
    );
    attribute VITAL_LEVEL1 of rdwr_RA1SHD512X32 : entity is TRUE;
end rdwr_RA1SHD512X32;

-------------- -------------- -------------- -------------- --------------
architecture BEHAVIORAL of rdwr_RA1SHD512X32 is
  constant ClkPort	: string:=cat("CLK",PortName);
  constant InstPort	: string:="RA1SHD512X32";
  signal ANi,MANi	: std_logic_vector(A'range);
  signal ANVio 		: std_logic_vector(A'range);
  signal WENVio, WENi 	: std_logic_vector(WEN'range);
  signal WENib	 	: std_logic_vector(WEN'range);
  signal DTP_INT 	: std_logic_vector(D'range);
  signal CENi           : std_logic;
  signal CENib		: std_logic;
  signal CENVio		: std_logic;
  signal OENi		: std_logic; 
  signal CLK_INT	: std_logic;
  signal GTP_INT	: std_logic:='0';
  signal GTP_RdWr	: std_logic:='0';
  signal Di,MDi		: std_logic_vector(D'range);
  signal DVio		: std_logic_vector(D'range);

--------------
begin
--------------
TPW_CLK: TPwCell   generic map(tipd_clk=>tipd_CLK, tperiod_clk=>tperiod_CLK,
                                tpw_clk_posedge=>tpw_CLK_posedge, tpw_clk_negedge=>tpw_CLK_negedge,
				TimingChecksOn=>TimingChecksOn, TestSignalName=>ClkPort, HeaderMsg=>InstPort)
                    port map(out0=>CLK_INT, clk=>CLK);
--------------
WEN_CELLS: for i in 0 to 3 generate
  TCH_WEN: TChCellEdges   generic map(tipd_in0=>tipd_WEN(i), tsetup_in0_clk_posedge_posedge=>tsetup_WEN_CLK_posedge_posedge(i),
                                thold_in0_clk_posedge_posedge=>thold_WEN_CLK_posedge_posedge(i), 
				tsetup_in0_clk_negedge_posedge=>tsetup_WEN_CLK_negedge_posedge(i),
                                thold_in0_clk_negedge_posedge=>thold_WEN_CLK_negedge_posedge(i), 
                                TestSignalName=>ClkPort, RefSignalName=>icat("WEN","",i), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>WEN(i), clk=>GTP_INT, Violation=>WENVio(i),out0=>WENi(i));
end generate;                      
--------------
TCH_CEN: TChCellEdges  generic map(tipd_in0=>tipd_CEN, tsetup_in0_clk_posedge_posedge=>tsetup_CEN_CLK_posedge_posedge,
                                thold_in0_clk_posedge_posedge=>thold_CEN_CLK_posedge_posedge, 
				tsetup_in0_clk_negedge_posedge=>tsetup_CEN_CLK_negedge_posedge,
                                thold_in0_clk_negedge_posedge=>thold_CEN_CLK_negedge_posedge, 
                                TestSignalName=>ClkPort, RefSignalName=>cat("CEN",PortName), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>CEN, clk=>CLK_INT, Violation=>CENVio,out0=>CENi);
--------------
TA_A_UTI: for i in 0 to 8 generate
TCH_A: TChCellEdges  generic map(tipd_in0=>tipd_A(i), tsetup_in0_clk_posedge_posedge=>tsetup_A_CLK_posedge_posedge(i),
                                thold_in0_clk_posedge_posedge=>thold_A_CLK_posedge_posedge(i), 
				tsetup_in0_clk_negedge_posedge=>tsetup_A_CLK_negedge_posedge(i),
                                thold_in0_clk_negedge_posedge=>thold_A_CLK_negedge_posedge(i),
                                TestSignalName=>ClkPort, RefSignalName=>icat("A","",i), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>A(i), clk=>GTP_INT, Violation=>ANVio(i),out0=>MANi(i));
end generate;                      

--------------
D_UTI: for i in 0 to 31 generate
 TCH_D: TChCellEdges  generic map(tipd_in0=>tipd_D(i), tsetup_in0_clk_posedge_posedge=>tsetup_D_CLK_posedge_posedge(i),
                                thold_in0_clk_posedge_posedge=>thold_D_CLK_posedge_posedge(i), 
				tsetup_in0_clk_negedge_posedge=>tsetup_D_CLK_negedge_posedge(i),
                                thold_in0_clk_negedge_posedge=>thold_D_CLK_negedge_posedge(i),
                                TestSignalName=>ClkPort, RefSignalName=>icat("D","",i), 
				TimingChecksOn=>TimingChecksOn, HeaderMsg=>InstPort)
                    port map(in0=>D(i), clk=>DTP_INT(i), Violation=>DVio(i),out0=>MDi(i));

--------------
  Q_AMPS: if0buf     generic map(tpd_sel_out0=>tpd_OEN_Q(i), tpd_in0_out0=>tpd_CLK_Q(i))
                     port map(in0=>Qi(i), sel=>OENi, out0=>Q(i));
end generate;      
OEN_TIPD: Tipd       generic map(tipd_in0=>tipd_OEN)
                     port    map(in0=>OEN, out0=>OENi);

--------------
GTP : process(GtpRst, CLK_INT, CENVio)
 Begin
  if((GtpRst'event and GtpRst='0' and CLK_INT /= 'X') or (CLK_INT'event and CLK_INT='0')) then
    GTP_INT <= '0'; 
    DTP_INT(0) <= '0';
    DTP_INT(1) <= '0';
    DTP_INT(2) <= '0';
    DTP_INT(3) <= '0';
    DTP_INT(4) <= '0';
    DTP_INT(5) <= '0';
    DTP_INT(6) <= '0';
    DTP_INT(7) <= '0';
    DTP_INT(8) <= '0';
    DTP_INT(9) <= '0';
    DTP_INT(10) <= '0';
    DTP_INT(11) <= '0';
    DTP_INT(12) <= '0';
    DTP_INT(13) <= '0';
    DTP_INT(14) <= '0';
    DTP_INT(15) <= '0';
    DTP_INT(16) <= '0';
    DTP_INT(17) <= '0';
    DTP_INT(18) <= '0';
    DTP_INT(19) <= '0';
    DTP_INT(20) <= '0';
    DTP_INT(21) <= '0';
    DTP_INT(22) <= '0';
    DTP_INT(23) <= '0';
    DTP_INT(24) <= '0';
    DTP_INT(25) <= '0';
    DTP_INT(26) <= '0';
    DTP_INT(27) <= '0';
    DTP_INT(28) <= '0';
    DTP_INT(29) <= '0';
    DTP_INT(30) <= '0';
    DTP_INT(31) <= '0';
  elsif((CENVio='X') or (CLK_INT'event and CLK_INT='X' and CENi = '0')) then
    GTP_INT <= 'X';
    DTP_INT(0) <= 'X';
    DTP_INT(1) <= 'X';
    DTP_INT(2) <= 'X';
    DTP_INT(3) <= 'X';
    DTP_INT(4) <= 'X';
    DTP_INT(5) <= 'X';
    DTP_INT(6) <= 'X';
    DTP_INT(7) <= 'X';
    DTP_INT(8) <= 'X';
    DTP_INT(9) <= 'X';
    DTP_INT(10) <= 'X';
    DTP_INT(11) <= 'X';
    DTP_INT(12) <= 'X';
    DTP_INT(13) <= 'X';
    DTP_INT(14) <= 'X';
    DTP_INT(15) <= 'X';
    DTP_INT(16) <= 'X';
    DTP_INT(17) <= 'X';
    DTP_INT(18) <= 'X';
    DTP_INT(19) <= 'X';
    DTP_INT(20) <= 'X';
    DTP_INT(21) <= 'X';
    DTP_INT(22) <= 'X';
    DTP_INT(23) <= 'X';
    DTP_INT(24) <= 'X';
    DTP_INT(25) <= 'X';
    DTP_INT(26) <= 'X';
    DTP_INT(27) <= 'X';
    DTP_INT(28) <= 'X';
    DTP_INT(29) <= 'X';
    DTP_INT(30) <= 'X';
    DTP_INT(31) <= 'X';
  elsif(CLK_INT'event and CLK_INT='1') then
    GTP_INT <= (CLK_INT and CENib);
    DTP_INT(0) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(1) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(2) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(3) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(4) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(5) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(6) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(7) <= (CLK_INT and CENib and WENib(0));
    DTP_INT(8) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(9) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(10) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(11) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(12) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(13) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(14) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(15) <= (CLK_INT and CENib and WENib(1));
    DTP_INT(16) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(17) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(18) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(19) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(20) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(21) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(22) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(23) <= (CLK_INT and CENib and WENib(2));
    DTP_INT(24) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(25) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(26) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(27) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(28) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(29) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(30) <= (CLK_INT and CENib and WENib(3));
    DTP_INT(31) <= (CLK_INT and CENib and WENib(3));
  end if;
 End Process;
--------------
  ANi <= not(MANi);
  CENib<= not(CENi);
  WENib<= not(WENi);
  Di  <= MDi;
  GTP_RdWr <= GTP_INT;

--------------
PROCA : process(GTP_RdWr, ANVio, DVio, WENVio)
  variable AddVio, DataVio: boolean;
  variable Rd, Wr : std_logic:='0';
  variable AddI  : std_logic_vector (8 downto 0) ;
	----------------------------------------------------------------------
  begin
    DataVio:=Is_X(DVio); AddVio:=Is_X(ANVio);
    Rd:='0'; Wr:='0';
 
    if(AddVio) then AddI:=(others=>'X');
    else            AddI:=not(ANi);
    end if;

    if((GTP_RdWr'last_value/='X' and GTP_RdWr'event) or AddVio or DataVio or Is_X(WENVio)) then
	case GTP_RdWr is
	    when '1' => 		-- valid rising edge
		if(All_1(WENi)) then Rd:='1';
		else Wr:='1'; -- UX
		end if;
	    when 'U'|'X' =>
		if (CENi='X') then
		  if (All_1(WENi)) then Rd:='X';
		  else Wr:='X'; end if;
		elsif(CLK_INT='X') then
		  AddI:= (others => 'X');
		  Wr:='X';
		else
		  Wr:='X';
		end if;
	    when others =>  null;
	end case;
    end if;

    Read<=Rd; Write<=Wr;
    if(Wr/='0' or Rd/='0') then
	Am<=AddI; Dm<=MDi;
	Bm<=not(WENi);
    end if;
-- 
  end process PROCA ;

--------------
End Behavioral;

--------------
-------------------
use std.all;
LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.VITAL_timing.all;
use IEEE.VITAL_primitives.all;
use WORK.vlibs.all; 
use WORK.lib_cells_pkgs.all;
use WORK.RA1SHD512X32_pkgs.all;

  entity RA1SHD512X32 is
    generic(
	tperiod_CLK  : VitalDelayType := 2.000 ns;
	tpw_CLK_negedge: VitalDelayType := 1.000 ns;
	tpw_CLK_posedge: VitalDelayType := 1.000 ns;
	tipd_CLK: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_CEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tipd_WEN: VitalDelayArrayType01(3 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_A: VitalDelayArrayType01(8 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_D: VitalDelayArrayType01(31 downto 0):=(others=>(0.000 ns, 0.000 ns));
	tipd_OEN: VitalDelayType01:=(0.000 ns, 0.000 ns);
	tsetup_CEN_CLK_posedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_CEN_CLK_negedge_posedge: VitalDelayType:=1.000 ns;
	tsetup_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	tsetup_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(1.000 ns));
	thold_CEN_CLK_posedge_posedge: VitalDelayType:=0.500 ns;
	thold_CEN_CLK_negedge_posedge: VitalDelayType:=0.500 ns;
	thold_WEN_CLK_posedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_WEN_CLK_negedge_posedge: VitalDelayArrayType(3 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_posedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_A_CLK_negedge_posedge: VitalDelayArrayType(8 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_posedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));
	thold_D_CLK_negedge_posedge: VitalDelayArrayType(31 downto 0):=(others=>(0.500 ns));

	tpd_CLK_Q: VitalDelayArrayType01Z(31 downto 0):=(others=>(1.0 ns,1.0 ns,0.50 ns,1.0 ns,0.50 ns,1.0 ns));
	tpd_OEN_Q: VitalDelayArrayType01Z(31 downto 0):=(others=>(1.0 ns,1.0 ns,0.50 ns,1.0 ns,0.50 ns,1.0 ns));
	TimingChecksOn: BOOLEAN := TRUE
    );
    port ( 
	CLK: in std_logic;
	CEN: in std_logic;
	WEN: in std_logic_vector(3 downto 0);
	A: in std_logic_vector(8 downto 0);
	D: in std_logic_vector(31 downto 0);
	OEN: in std_logic;
	Q: out std_logic_vector(31 downto 0)
    );
    attribute VITAL_LEVEL1 of RA1SHD512X32 : entity is TRUE;
end RA1SHD512X32;

-----------------------------------------------------------------------------
architecture Structural of RA1SHD512X32 is
  signal MEM: MEM_TYPE(511 downto 0, 31 downto 0);
  signal gnd: std_logic:='0';
  signal gndA: std_logic_vector(8 downto 0):=(others=>'0');
  signal gndD: std_logic_vector(31 downto 0):=(others=>'0');
  signal Read, Write: std_logic;
  signal GtpRst, BusyWr, BusyRd: std_logic:='0';
  signal Am: std_logic_vector(8 downto 0);
  signal Dm, Qi: std_logic_vector(31 downto 0);
  signal Bm: std_logic_vector(3 downto 0);

Begin

----------
-- Memory Read/Write Cycles. BusyWr/Rd='X': Timing Violation on Control signals.
-- BusyWr/Rd='1': Valid Wr/Rd Cycle
----------
  WR_SAME_LOC :process (BusyWr, BusyRd, Am, Dm)
  variable contention : boolean := false;
  variable NQi, NDm: std_logic_vector(Dm'range);
  begin
      if(BusyWr='X') then
	  NQi:=(others=>'X');
	  WRITE_MEM(Am, NQi, MEM);	--  Violations
	  Qi<=(others=>'X');
      elsif(BusyRd='X') then
	  Qi<=(others=>'X');
      elsif(BusyWr='1') then 		--  Valid Write Cycle
	  GET_MASKED_VALUE(Am, Dm, Bm, 8, MEM, NDm);
	  WRITE_MEM(Am, NDm, MEM, Contention);
	  if(Contention) then Qi<=(others=>'X');
	  else Qi<=NDm; end if;
      elsif(BusyRd='1') then 		-- Valid Read Cycle
	  READ_MEM(Am, NQi, MEM);
	  Qi<=NQi;
      end if;
  end process WR_SAME_LOC;
                   

  BusyRdWr: process(Write, Read)
  Begin
      if(Write'event and Write/='0') then
	  BusyWr<=Write, '0' after 2.0 ns;
	  GtpRst<='1', '0' after 2.0 ns;
      end if;
      if(Read'event and Read/='0') then
	  BusyRd<=Read, '0' after 2.0 ns;
	  GtpRst<='1', '0' after 2.0 ns;
      end if;
  end process BusyRdWR;


  MemPort: rdwr_RA1SHD512X32
    generic map(
	tipd_CLK=>tipd_CLK,
	tipd_CEN=>tipd_CEN,
	tipd_WEN=>tipd_WEN,
	tipd_A=>tipd_A,
	tipd_D=>tipd_D,
	tipd_OEN=>tipd_OEN,
	tsetup_CEN_CLK_posedge_posedge=>tsetup_CEN_CLK_posedge_posedge,
	tsetup_CEN_CLK_negedge_posedge=>tsetup_CEN_CLK_negedge_posedge,
	tsetup_WEN_CLK_posedge_posedge=>tsetup_WEN_CLK_posedge_posedge,
	tsetup_WEN_CLK_negedge_posedge=>tsetup_WEN_CLK_negedge_posedge,
	tsetup_A_CLK_posedge_posedge=>tsetup_A_CLK_posedge_posedge,
	tsetup_A_CLK_negedge_posedge=>tsetup_A_CLK_negedge_posedge,
	tsetup_D_CLK_posedge_posedge=>tsetup_D_CLK_posedge_posedge,
	tsetup_D_CLK_negedge_posedge=>tsetup_D_CLK_negedge_posedge,
	thold_CEN_CLK_posedge_posedge=>thold_CEN_CLK_posedge_posedge,
	thold_CEN_CLK_negedge_posedge=>thold_CEN_CLK_negedge_posedge,
	thold_WEN_CLK_posedge_posedge=>thold_WEN_CLK_posedge_posedge,
	thold_WEN_CLK_negedge_posedge=>thold_WEN_CLK_negedge_posedge,
	thold_A_CLK_posedge_posedge=>thold_A_CLK_posedge_posedge,
	thold_A_CLK_negedge_posedge=>thold_A_CLK_negedge_posedge,
	thold_D_CLK_posedge_posedge=>thold_D_CLK_posedge_posedge,
	thold_D_CLK_negedge_posedge=>thold_D_CLK_negedge_posedge,
	tperiod_CLK => tperiod_CLK,
	tpw_CLK_negedge => tpw_CLK_negedge,
	tpw_CLK_posedge => tpw_CLK_posedge,
	tpd_OEN_Q=>tpd_OEN_Q, 
	tpd_CLK_Q=>tpd_CLK_Q, 
	PortName => "",
	TimingChecksOn => TimingChecksOn
    )
    port map ( 
	Q => Q,
	CLK => CLK,
	CEN => CEN,
	WEN => WEN,
	A => A,
	D => D,
	OEN => OEN,
	Read => Read,
	Write => Write,
	GtpRst => GtpRst,
	AM => Am,
	BM => Bm,
	DM => Dm,
	Qi => Qi
    );

End Structural;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_cpu_disp2 is
  Port (
    mclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Inport0 : in STD_LOGIC_VECTOR(7 downto 0);
    Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
    Outport0 : out STD_LOGIC_VECTOR(7 downto 0);
    Outport1 : out STD_LOGIC_VECTOR(7 downto 0);
    DISP2_SEG : out STD_LOGIC_VECTOR(7 downto 0);
    DISP2_AN : out STD_LOGIC_VECTOR(3 downto 0)
  );
end top_cpu_disp2;

architecture Behavioral of top_cpu_disp2 is
component cpu is
PORT(
  clk : in STD_LOGIC;
  DebClk : in STD_LOGIC;
  reset : in STD_LOGIC;
  Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
  Outport0, Outport1 : out STD_LOGIC_VECTOR(7 downto 0);
  RegA, RegB : out STD_LOGIC_VECTOR(7 downto 0);
  BCD0A_Strobe, BCD0B_Strobe : out STD_LOGIC
);
end component;

component clk_div_cpu is
  Port (
    clk_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
end component;

component clk_div_1khz is
  Port (
    clk_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
end component;

component bcd0_mux is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd_lo_in : in STD_LOGIC_VECTOR(7 downto 0);
    bcd_hi_in : in STD_LOGIC_VECTOR(7 downto 0);
    strobe_a : in STD_LOGIC;
    strobe_b : in STD_LOGIC;
    a_lo : out STD_LOGIC_VECTOR(7 downto 0);
    a_hi : out STD_LOGIC_VECTOR(7 downto 0);
    b_lo : out STD_LOGIC_VECTOR(7 downto 0);
    b_hi : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

component disp2_driver is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    digit3 : in STD_LOGIC_VECTOR(7 downto 0);
    digit2 : in STD_LOGIC_VECTOR(7 downto 0);
    digit1 : in STD_LOGIC_VECTOR(7 downto 0);
    digit0 : in STD_LOGIC_VECTOR(7 downto 0);
    disp2_seg : out STD_LOGIC_VECTOR(7 downto 0);
    disp2_an : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

signal cpu_out0, cpu_out1 : STD_LOGIC_VECTOR(7 downto 0);
signal cpu_reg_a, cpu_reg_b : STD_LOGIC_VECTOR(7 downto 0);
signal bcd0a_stb, bcd0b_stb : STD_LOGIC;
signal a_lo_s, a_hi_s : STD_LOGIC_VECTOR(7 downto 0);
signal b_lo_s, b_hi_s : STD_LOGIC_VECTOR(7 downto 0);
signal disp_clk_1khz : STD_LOGIC;
signal cpu_clk_10hz : STD_LOGIC;

begin

U_CLKDIV : clk_div_1khz
  PORT MAP (
    clk_in => mclk,
    reset => reset,
    clk_out => disp_clk_1khz
  );

U_CPUCLK_DIV : clk_div_cpu
  PORT MAP (
    clk_in => mclk,
    reset => reset,
    clk_out => cpu_clk_10hz
  );

U_CPU : cpu
  PORT MAP (
    clk => cpu_clk_10hz,
    DebClk => disp_clk_1khz,
    reset => reset,
    Inport0 => Inport0,
    Inport1 => Inport1,
    Outport0 => cpu_out0,
    Outport1 => cpu_out1,
    RegA => cpu_reg_a,
    RegB => cpu_reg_b,
    BCD0A_Strobe => bcd0a_stb,
    BCD0B_Strobe => bcd0b_stb
  );

Outport0 <= cpu_out0;
Outport1 <= cpu_out1;

U_BCD0_MUX : bcd0_mux
  PORT MAP (
    clk => cpu_clk_10hz,
    reset => reset,
    bcd_lo_in => cpu_reg_a,
    bcd_hi_in => cpu_reg_b,
    strobe_a => bcd0a_stb,
    strobe_b => bcd0b_stb,
    a_lo => a_lo_s,
    a_hi => a_hi_s,
    b_lo => b_lo_s,
    b_hi => b_hi_s
  );

U_DISP2 : disp2_driver
  PORT MAP (
    clk => disp_clk_1khz,
    reset => reset,
    digit3 => b_hi_s,
    digit2 => b_lo_s,
    digit1 => a_hi_s,
    digit0 => a_lo_s,
    disp2_seg => DISP2_SEG,
    disp2_an => DISP2_AN
  );

end Behavioral;

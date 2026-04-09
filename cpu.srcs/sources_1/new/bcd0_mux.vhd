library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd0_mux is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd_lo_in : in STD_LOGIC_VECTOR(7 downto 0); -- Outport0 (lower nibble decode)
    bcd_hi_in : in STD_LOGIC_VECTOR(7 downto 0); -- Outport1 (upper nibble decode)
    a_lo : out STD_LOGIC_VECTOR(7 downto 0);
    a_hi : out STD_LOGIC_VECTOR(7 downto 0);
    b_lo : out STD_LOGIC_VECTOR(7 downto 0);
    b_hi : out STD_LOGIC_VECTOR(7 downto 0)
  );
end bcd0_mux;

architecture Behavioral of bcd0_mux is
constant SEG_0 : STD_LOGIC_VECTOR(7 downto 0) := "11000000";
constant SEG_1 : STD_LOGIC_VECTOR(7 downto 0) := "11111001";
constant SEG_2 : STD_LOGIC_VECTOR(7 downto 0) := "10100100";
constant SEG_3 : STD_LOGIC_VECTOR(7 downto 0) := "10110000";
constant SEG_4 : STD_LOGIC_VECTOR(7 downto 0) := "10011001";
constant SEG_5 : STD_LOGIC_VECTOR(7 downto 0) := "10010010";
constant SEG_6 : STD_LOGIC_VECTOR(7 downto 0) := "10000010";
constant SEG_7 : STD_LOGIC_VECTOR(7 downto 0) := "11111000";
constant SEG_8 : STD_LOGIC_VECTOR(7 downto 0) := "10000000";
constant SEG_9 : STD_LOGIC_VECTOR(7 downto 0) := "10010000";
constant SEG_HYPHEN : STD_LOGIC_VECTOR(7 downto 0) := "10111111";

signal a_lo_r, a_hi_r : STD_LOGIC_VECTOR(7 downto 0);
signal b_lo_r, b_hi_r : STD_LOGIC_VECTOR(7 downto 0);
signal prev_lo, prev_hi : STD_LOGIC_VECTOR(7 downto 0);
signal capture_b_next : STD_LOGIC;

function IsBCDSeg(constant SEG : STD_LOGIC_VECTOR(7 downto 0)) return BOOLEAN is
begin
  case SEG is
    when SEG_0 | SEG_1 | SEG_2 | SEG_3 | SEG_4
       | SEG_5 | SEG_6 | SEG_7 | SEG_8 | SEG_9
       | SEG_HYPHEN =>
      return true;
    when others =>
      return false;
  end case;
end function;

begin

process(clk, reset)
begin
  if(reset = '1') then
    a_lo_r <= SEG_HYPHEN;
    a_hi_r <= SEG_HYPHEN;
    b_lo_r <= SEG_HYPHEN;
    b_hi_r <= SEG_HYPHEN;
    prev_lo <= (others => '0');
    prev_hi <= (others => '0');
    capture_b_next <= '0';
  elsif(rising_edge(clk)) then
    if(IsBCDSeg(bcd_lo_in) and IsBCDSeg(bcd_hi_in)
       and ((bcd_lo_in /= prev_lo) or (bcd_hi_in /= prev_hi))) then
      if(capture_b_next = '0') then
        a_lo_r <= bcd_lo_in;
        a_hi_r <= bcd_hi_in;
        capture_b_next <= '1';
      else
        b_lo_r <= bcd_lo_in;
        b_hi_r <= bcd_hi_in;
        capture_b_next <= '0';
      end if;
      prev_lo <= bcd_lo_in;
      prev_hi <= bcd_hi_in;
    end if;
  end if;
end process;

a_lo <= a_lo_r;
a_hi <= a_hi_r;
b_lo <= b_lo_r;
b_hi <= b_hi_r;

end Behavioral;

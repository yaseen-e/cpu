library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd0_mux is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd_lo_in : in STD_LOGIC_VECTOR(7 downto 0); -- REG A
    bcd_hi_in : in STD_LOGIC_VECTOR(7 downto 0); -- REG B
    strobe_a : in STD_LOGIC;
    strobe_b : in STD_LOGIC;
    a_lo : out STD_LOGIC_VECTOR(7 downto 0);
    a_hi : out STD_LOGIC_VECTOR(7 downto 0);
    b_lo : out STD_LOGIC_VECTOR(7 downto 0);
    b_hi : out STD_LOGIC_VECTOR(7 downto 0)
  );
end bcd0_mux;

architecture Behavioral of bcd0_mux is
constant SEG_HYPHEN : STD_LOGIC_VECTOR(7 downto 0) := "10111111";

signal a_lo_r, a_hi_r : STD_LOGIC_VECTOR(7 downto 0);
signal b_lo_r, b_hi_r : STD_LOGIC_VECTOR(7 downto 0);

function BCD0(constant NIBBLE : STD_LOGIC_VECTOR(3 downto 0)) return STD_LOGIC_VECTOR is
begin
  case NIBBLE is
    when "0000" => return "11000000"; -- 0
    when "0001" => return "11111001"; -- 1
    when "0010" => return "10100100"; -- 2
    when "0011" => return "10110000"; -- 3
    when "0100" => return "10011001"; -- 4
    when "0101" => return "10010010"; -- 5
    when "0110" => return "10000010"; -- 6
    when "0111" => return "11111000"; -- 7
    when "1000" => return "10000000"; -- 8
    when "1001" => return "10010000"; -- 9
    when others =>
      return "10111111"; -- hyphen
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
  elsif(rising_edge(clk)) then
    if(strobe_a = '1') then
      a_lo_r <= BCD0(bcd_lo_in(3 downto 0));
      a_hi_r <= BCD0(bcd_lo_in(7 downto 4));
    end if;
    if(strobe_b = '1') then
      b_lo_r <= BCD0(bcd_hi_in(3 downto 0));
      b_hi_r <= BCD0(bcd_hi_in(7 downto 4));
    end if;
  end if;
end process;

a_lo <= a_lo_r;
a_hi <= a_hi_r;
b_lo <= b_lo_r;
b_hi <= b_hi_r;

end Behavioral;

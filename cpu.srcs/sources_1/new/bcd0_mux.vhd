library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd0_mux is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    bcd_lo_in : in STD_LOGIC_VECTOR(7 downto 0); -- REG A
    bcd_hi_in : in STD_LOGIC_VECTOR(7 downto 0); -- REG B
    a_lo : out STD_LOGIC_VECTOR(7 downto 0);
    a_hi : out STD_LOGIC_VECTOR(7 downto 0);
    b_lo : out STD_LOGIC_VECTOR(7 downto 0);
    b_hi : out STD_LOGIC_VECTOR(7 downto 0)
  );
end bcd0_mux;

architecture Behavioral of bcd0_mux is
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

-- Keep sequential-style ports for interface compatibility; decode is combinational.
a_lo <= BCD0(bcd_lo_in(3 downto 0));
a_hi <= BCD0(bcd_lo_in(7 downto 4));
b_lo <= BCD0(bcd_hi_in(3 downto 0));
b_hi <= BCD0(bcd_hi_in(7 downto 4));

end Behavioral;

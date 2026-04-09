library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity disp2_driver is
  Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    digit3 : in STD_LOGIC_VECTOR(7 downto 0); -- leftmost
    digit2 : in STD_LOGIC_VECTOR(7 downto 0);
    digit1 : in STD_LOGIC_VECTOR(7 downto 0);
    digit0 : in STD_LOGIC_VECTOR(7 downto 0); -- rightmost
    disp2_seg : out STD_LOGIC_VECTOR(7 downto 0);
    disp2_an : out STD_LOGIC_VECTOR(3 downto 0)
  );
end disp2_driver;

architecture Behavioral of disp2_driver is
signal scan_sel : unsigned(1 downto 0);

begin

process(clk, reset)
begin
  if(reset = '1') then
    scan_sel <= (others => '0');
  elsif(rising_edge(clk)) then
    scan_sel <= scan_sel + 1;
  end if;
end process;

process(scan_sel, digit0, digit1, digit2, digit3)
begin
  case STD_LOGIC_VECTOR(scan_sel) is
    when "00" =>
      disp2_an <= "1110";
      disp2_seg <= digit0;
    when "01" =>
      disp2_an <= "1101";
      disp2_seg <= digit1;
    when "10" =>
      disp2_an <= "1011";
      disp2_seg <= digit2;
    when others =>
      disp2_an <= "0111";
      disp2_seg <= digit3;
  end case;
end process;

end Behavioral;

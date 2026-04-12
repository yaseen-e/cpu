----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2024 08:13:37 PM
-- Design Name: 
-- Module Name: cputb1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
entity cputb1 is
end cputb1;
 
architecture behavior of cputb1 is 
-- Component Declaration for the Unit Under Test (UUT)
component cpu
    PORT(
         clk : IN  std_logic;
         DebClk : IN std_logic;
         reset : IN  std_logic;
         Inport0 : IN  std_logic_vector(7 downto 0);
         Inport1 : IN  std_logic_vector(7 downto 0);
         Outport0 : OUT  std_logic_vector(7 downto 0);
         Outport1 : OUT  std_logic_vector(7 downto 0);
         RegA : OUT std_logic_vector(7 downto 0);
         RegB : OUT std_logic_vector(7 downto 0);
         BCD0A_Strobe : OUT std_logic;
         BCD0B_Strobe : OUT std_logic
        );
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '1';
signal Inport0 : std_logic_vector(7 downto 0) := (others => '0');
signal Inport1 : std_logic_vector(7 downto 0) := (others => '0');

--Outputs
signal Outport0 : std_logic_vector(7 downto 0);
signal Outport1 : std_logic_vector(7 downto 0);
signal RegA : std_logic_vector(7 downto 0);
signal RegB : std_logic_vector(7 downto 0);
signal BCD0A_Strobe : std_logic;
signal BCD0B_Strobe : std_logic;

-- Clock period definitions
constant clk_period : time := 10ns;
constant sim_timeout : time := 4000ns;
 
begin
-- Instantiate the Unit Under Test (UUT)
C1 : cpu PORT MAP (clk => clk, reset => reset, Inport0 => Inport0, Inport1 => Inport1,
                   DebClk => clk,
                   Outport0 => Outport0, Outport1 => Outport1,
                   RegA => RegA, RegB => RegB,
                   BCD0A_Strobe => BCD0A_Strobe,
                   BCD0B_Strobe => BCD0B_Strobe);

-- Clock process 
clk_process : process begin
              clk <= '0'; wait for clk_period/2;
		      clk <= '1'; wait for clk_period/2;
              end process;

-- Stimulus process
stim_proc : process begin		
            wait for 100ns;     -- hold reset state for 100ns.
            reset <= '0';
            wait;
            end process;

-- Verify carry/branch behavior using the directed RAM program.
check_proc : process
begin
        wait until reset = '0';
        wait for sim_timeout;

        assert (Outport0 = X"28")
            report "FAIL: Expected Outport0 = 0x28 (40) from pass path, got " & integer'image(to_integer(unsigned(Outport0)))
            severity failure;

        assert (RegA = X"28")
            report "FAIL: Expected RegA = 0x28 after 239 + 57 with wraparound"
            severity failure;

        report "PASS: Carry + BCC/BCS program reached expected pass state." severity note;
        wait;
end process;

end;


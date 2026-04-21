----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2026 08:06:23 PM
-- Design Name: 
-- Module Name: cpu - Behavioral
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

LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity cpu is
PORT(
	 mclk : in STD_LOGIC;
	 reset : in STD_LOGIC;
	 Inport0, Inport1 : in STD_LOGIC_VECTOR(7 downto 0);
	 Outport0, Outport1	: out STD_LOGIC_VECTOR(7 downto 0);
	 DISP2_SEG : out STD_LOGIC_VECTOR(7 downto 0);
	 DISP2_AN : out STD_LOGIC_VECTOR(3 downto 0)
);
end cpu;

architecture a of cpu is
-- ----------- Declare the ALU component ----------
component alu is
port(A, B : in SIGNED(7 downto 0);
        F : in STD_LOGIC_VECTOR(2 downto 0);
        Y : out SIGNED(7 downto 0);
	N,V,Z,C : out STD_LOGIC);
end component;
-- ------------ Declare signals interfacing to ALU -------------
signal ALU_A, ALU_B : SIGNED(7 downto 0);
signal ALU_FUNC : STD_LOGIC_VECTOR(2 downto 0);
signal ALU_OUT : SIGNED(7 downto 0);
signal ALU_N, ALU_V, ALU_Z, ALU_C : STD_LOGIC;

-- ------------ Declare the 512x8 RAM component --------------
component microram is
port (  CLOCK   : in STD_LOGIC ;
		ADDRESS	: in STD_LOGIC_VECTOR (8 downto 0);
		DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
		DATAIN  : in STD_LOGIC_VECTOR (7 downto 0);
		WE	: in STD_LOGIC 
	 );
end component;

-- When running behavioral instruction tests, comment microram above,
-- then uncomment this microram_sim declaration.
--component microram_sim is
--port (  CLOCK   : in STD_LOGIC ;
--		ADDRESS	: in STD_LOGIC_VECTOR (8 downto 0);
--		DATAOUT : out STD_LOGIC_VECTOR (7 downto 0);
--		DATAIN  : in STD_LOGIC_VECTOR (7 downto 0);
--		WE	: in STD_LOGIC 
--	 );
--end component;
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

-- ---------- Declare signals interfacing to RAM ---------------
signal RAM_DATA_OUT : STD_LOGIC_VECTOR(7 downto 0);  -- DATAOUT output of RAM
signal ADDR : STD_LOGIC_VECTOR(8 downto 0);	         -- ADDRESS input of RAM
signal RAM_WE : STD_LOGIC;

-- ---------- Declare the state names and state variable -------------
type STATE_TYPE is (Fetch, Operand, Memory, Execute);
signal CurrState : STATE_TYPE;
-- ---------- Declare the internal CPU registers -------------------
signal PC : UNSIGNED(8 downto 0);
signal IR : STD_LOGIC_VECTOR(7 downto 0);
signal MDR : STD_LOGIC_VECTOR(7 downto 0);
	
signal A,B : SIGNED(7 downto 0);
signal N,Z,V,C : STD_LOGIC;
-- ---------- Declare the common data bus ------------------
signal DATA : STD_LOGIC_VECTOR(7 downto 0);
signal BCD0A_Strobe, BCD0B_Strobe : STD_LOGIC;
signal a_lo_s, a_hi_s : STD_LOGIC_VECTOR(7 downto 0);
signal b_lo_s, b_hi_s : STD_LOGIC_VECTOR(7 downto 0);
signal disp_clk_1khz : STD_LOGIC;

-- -----------------------------------------------------
-- This function returns TRUE if the given op code is a
-- 4-phase instruction rather than a 2-phase instruction
-- -----------------------------------------------------	
function Is4Phase(constant DATA : STD_LOGIC_VECTOR(7 downto 0)) return BOOLEAN is
variable RETVAL : BOOLEAN;
begin
	if((DATA(7 downto 1) = "0000000") or   -- LOAD M,R
		 (DATA(7 downto 1) = "0000001") or
		 (DATA(7 downto 1) = "0000010") or   -- STOR R,M
		 (DATA(7 downto 1) = "0000011") or
		 (DATA(7 downto 1) = "0010000") or   -- BCC M
		 (DATA(7 downto 1) = "0010001") or
		 (DATA(7 downto 1) = "0010010") or   -- BCS M
		 (DATA(7 downto 1) = "0010011")) then
	 RETVAL := true;
  else
	 RETVAL := false;
  end if;
 return RETVAL;
end function;

-- -----------------------------------------------------
-- 4-bit BCD to 7-segment decoder (abcdefgdp, active low)
-- -----------------------------------------------------
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
		when others => return "10111111"; -- hyphen for non-BCD values
	end case;
end function;
	
-- --------- Declare variables that indicate which registers are to be written --------
-- --------- from the DATA bus at the start of the next Fetch cycle. ------------------
signal Exc_RegWrite : STD_LOGIC;        -- Latch data bus in A or B
signal Exc_CCWrite : STD_LOGIC;         -- Latch ALU status bits in CCR
signal Exc_CWrite : STD_LOGIC;          -- Latch carry bit C in CCR
signal Exc_IOWrite : STD_LOGIC;         -- Latch data bus in I/O
signal Exc_IOBCD : STD_LOGIC;           -- Latch BCD-decoded DATA nibbles to Outport0/1

-- 40ms debounce at 100MHz.
constant DEBOUNCE_MAX : integer := 4000000;
signal Debounce0 : integer range 0 to DEBOUNCE_MAX;
signal Debounce1 : integer range 0 to DEBOUNCE_MAX;
	
begin
-- ------------ Instantiate the ALU component ---------------
U1 : alu PORT MAP (ALU_A, ALU_B, ALU_FUNC, ALU_OUT, ALU_N, ALU_V, ALU_Z, ALU_C);

U_CLKDIV : clk_div_1khz
	PORT MAP (
		clk_in => mclk,
		reset => reset,
		clk_out => disp_clk_1khz
	);

U_BCD0_MUX : bcd0_mux
	PORT MAP (
		clk => mclk,
		reset => reset,
		bcd_lo_in => STD_LOGIC_VECTOR(A),
		bcd_hi_in => STD_LOGIC_VECTOR(B),
		strobe_a => BCD0A_Strobe,
		strobe_b => BCD0B_Strobe,
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
			
-- ------------ Drive the ALU_FUNC input ----------------
ALU_FUNC <= IR(6 downto 4);
	
-- ------------ Instantiate the RAM component -------------
U2 : microram PORT MAP (CLOCK => mclk, ADDRESS => ADDR, DATAOUT => RAM_DATA_OUT, DATAIN => DATA, WE => RAM_WE);

-- For behavioral instruction testing, comment U2 above and uncomment below.
--U2 : microram_sim PORT MAP (CLOCK => mclk, ADDRESS => ADDR, DATAOUT => RAM_DATA_OUT, DATAIN => DATA, WE => RAM_WE);

-- ---------------- Generate RAM write enable ---------------------
-- The address and data are presented to the RAM during the Memory phase, 
-- hence this is when we need to set RAM_WE high.
process (CurrState,IR)
begin
  if((CurrState = Memory) and (IR(7 downto 2) = "000001")) then
	  RAM_WE <= '1';
  else
	  RAM_WE <= '0';
  end if;
end process;
	
-- ---------------- Generate address bus --------------------------
with CurrState select
	 ADDR <= STD_LOGIC_VECTOR(PC) when Fetch,
			 STD_LOGIC_VECTOR(PC) when Operand,  -- really a don't care
			 IR(1) & MDR when Memory,
			 STD_LOGIC_VECTOR(PC) when Execute,
			 STD_LOGIC_VECTOR(PC) when others;   -- just to be safe
				
-- --------------------------------------------------------------------
-- This is the next-state logic for the 4-phase state machine.
-- --------------------------------------------------------------------
process (mclk,reset)
variable temp : integer;
begin
  if(reset = '1') then
	 CurrState <= Fetch;
	 PC <= (others => '0');
	 IR <= (others => '0');
	 MDR <= (others => '0');
	 A <= X"01";
	 B <= (others => '0');
	 N <= '0';
	 Z <= '0';
	 V <= '0';
	 C <= '0';
	 Outport0 <= (others => '0');
	 Outport1 <= (others => '0');
	 BCD0A_Strobe <= '0';
	 BCD0B_Strobe <= '0';
	 temp := 0;
	elsif(rising_edge(mclk)) then
	 BCD0A_Strobe <= '0';
	 BCD0B_Strobe <= '0';
	 case CurrState is
		  when Fetch => IR <= DATA;
					    if(Is4Phase(DATA)) then
						   PC <= PC + 1;
						   temp := temp + 1;
						   CurrState <= Operand;
					    else
						   CurrState <= Execute;
					    end if;

		 when Operand => MDR <= DATA;
					     CurrState <= Memory;

		 when Memory => CurrState <= Execute;
					
		 when Execute => if(temp = 2) then 
		                    PC <= "000000010";
					     else
					        PC <= PC + 1;
					        temp := temp +1;
					     end if;

					 if((IR(7 downto 1) = "0010000") or (IR(7 downto 1) = "0010001")) then
					    if(C = '0') then
					       PC <= UNSIGNED(IR(1) & MDR);
					    end if;
					 elsif((IR(7 downto 1) = "0010010") or (IR(7 downto 1) = "0010011")) then
					    if(C = '1') then
					       PC <= UNSIGNED(IR(1) & MDR);
					    end if;
					 end if;
					     CurrState <= Fetch;
					
					     if(Exc_RegWrite = '1') then   -- Writing result to A or B
						    if(IR(0) = '0') then
							   A <= SIGNED(DATA);
						    else
							   B <= SIGNED(DATA);
						    end if;
					     end if;
					
					     if(Exc_CCWrite = '1') then    -- Updating flag bits
						    V <= ALU_V;
						    N <= ALU_N;
						    Z <= ALU_Z;
						    if(Exc_CWrite = '1') then
						       C <= ALU_C;
						    end if;
					     end if;

					     if(Exc_IOWrite = '1') then    -- Write to Outport0 or OutPort1
						    if(IR(1) = '0') then
							   Outport0 <= DATA;
						    else
							   Outport1 <= DATA;
						    end if;
						 end if;
					     
					     if(Exc_IOBCD = '1') then      -- Write BCD to Outport 0 or Outport1
						   -- Keep LED outports controlled by OUT only; BCD strobes drive DISP2 path.
						   if(IR(0) = '0') then
							 BCD0A_Strobe <= '1';
						   else
							 BCD0B_Strobe <= '1';
						   end if;
					     end if;
					
			when Others => CurrState <= Fetch;
		end case;
	end if;
end process;

	
process (CurrState,RAM_DATA_OUT,A,B,ALU_OUT,Inport0,Inport1,IR) 
begin
-- Set these to 0 in each phase unless overridden, just so we don't
-- generate latches (which are unnecessary).
Exc_RegWrite <= '0';
Exc_CCWrite <= '0';
Exc_CWrite <= '0';
Exc_IOWrite <= '0';
Exc_IOBCD <= '0';

-- Same idea
ALU_A <= A;
ALU_B <= B;

-- Same idea
DATA <= RAM_DATA_OUT;

case CurrState is
	 when Fetch | Operand => DATA <= RAM_DATA_OUT;
						
	 when Memory => if(IR(0) = '0') then
					   DATA <= STD_LOGIC_VECTOR(A);
				    else
					   DATA <= STD_LOGIC_VECTOR(B);
				    end if;
				
	 when Execute => case IR(7 downto 1) is
					      when "1000000" 			-- ADD R
						     | "1001000"			-- SUB R
						     | "1100000"			-- XOR R
						     | "1111000" =>			-- CLR R
						        DATA <= STD_LOGIC_VECTOR(ALU_OUT);
						        Exc_RegWrite <= '1';
                                Exc_CCWrite <= '1';
						        if((IR(7 downto 1) = "1000000") or (IR(7 downto 1) = "1001000") or (IR(7 downto 1) = "1111000")) then
						           Exc_CWrite <= '1';
						        end if;
						
					      when "1010000"			-- LSL R
						     | "1011000"			-- LSR R
						     | "1101000"			-- COM R
						     | "1110000" =>			-- NEG R
						        if(IR(0) = '0') then
						 	       ALU_A <= A;
						        else
						 	       ALU_A <= B;
						        end if;
						        DATA <= STD_LOGIC_VECTOR(ALU_OUT);
						        Exc_RegWrite <= '1';
						        Exc_CCWrite <= '1';
						        if((IR(7 downto 1) = "1010000") or (IR(7 downto 1) = "1011000") or (IR(7 downto 1) = "1101000")) then
						           Exc_CWrite <= '1';
						        end if;

					      when "0000100"|"0000101" =>          -- OUT R,P
						        if(IR(0) = '0') then
							       DATA <= STD_LOGIC_VECTOR(A);
						        else
							       DATA <= STD_LOGIC_VECTOR(B);
						        end if;
						        Exc_IOWrite <= '1';
						        
						  when "0011100" =>                       -- BCD0 R
						      if(IR(0) = '0') then
						          DATA <= STD_LOGIC_VECTOR(A);
						      else
						          DATA <= STD_LOGIC_VECTOR(B);
						      end if;
						      Exc_IOBCD <= '1';
						
					      when "0000110"|"0000111" =>	         -- IN P,R
						        if(IR(1) = '0') then
							       DATA <= Inport0;
						        else
							       DATA <= Inport1;
						        end if;
						        Exc_RegWrite <= '1';
						        
						  when "0011000" | "0011001" =>    -- DEB P,R
						      if(IR(1) = '0') then          -- DEB 0,R uses Inport0(0)
						          if(Debounce0 = 0) then
						              DATA <= X"01";
						          else
						              DATA <= X"00";
						          end if;
						      else                          -- DEB 1,R uses Inport0(1)
						          if(Debounce1 = 0) then
						              DATA <= X"01";
						          else
						              DATA <= X"00";
						          end if;
						      end if;
						      Exc_RegWrite <= '1';
						
					      when "0000000"|"0000001" =>          -- LOAD M,R
						        DATA <= RAM_DATA_OUT;
						        Exc_RegWrite <= '1';
						
					      when "0000010"|"0000011" =>	       -- STOR R,M
						        null;

					      when "0010000"|"0010001" =>          -- BCC M
						        null;

					      when "0010010"|"0010011" =>          -- BCS M
						        null;
								
					      when others => null;
				    end case;
		end case;	
end process;

-- ------------ Debounce timer 0 ----------------
process(mclk, reset)
begin
	if(reset = '1') then
		Debounce0 <= DEBOUNCE_MAX;
	elsif(rising_edge(mclk)) then
		if(Inport0(0) = '1') then
			Debounce0 <= DEBOUNCE_MAX;
		elsif(Debounce0 > 0) then
			Debounce0 <= Debounce0 - 1;
		else
			Debounce0 <= 0;
		end if;
	end if;
end process;

-- ------------ Debounce timer 1 ----------------
process(mclk, reset)
begin
	if(reset = '1') then
		Debounce1 <= DEBOUNCE_MAX;
	elsif(rising_edge(mclk)) then
		if(Inport0(1) = '1') then
			Debounce1 <= DEBOUNCE_MAX;
		elsif(Debounce1 > 0) then
			Debounce1 <= Debounce1 - 1;
		else
			Debounce1 <= 0;
		end if;
	end if;
end process;

end a;


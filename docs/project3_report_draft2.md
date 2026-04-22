2.6 BCD0
Textual Description:
Converts the selected register nibble values into 7-segment codes and updates the DISP2 display path.

Opcode:
0011100R (R=0 -> A, R=1 -> B)

RTL Description:
Fetch: IR <- MEM(PC), PC <- PC + 1
Execute: if R=0 then BCD0A_Strobe <- 1 else BCD0B_Strobe <- 1
Display logic latches BCD-decoded low/high nibbles for the selected register.

Testbench Snapshot:
Capture the program listing that includes BCD0 lines from testfile.coe: address 3 (00111000, BCD0 A), address 7 (00111001, BCD0 B), and at least one nearby LOAD line. Use this as the static instruction snapshot.

Simulation Waveform:
In the Simulation waveform window, add internal CPU signals from hierarchy C1: IR, PC, CurrState, BCD0A_Strobe, BCD0B_Strobe, DISP2_SEG, and DISP2_AN. Run until IR=0x38 or IR=0x39 at Execute, then screenshot that cycle.

2.25 DEB
Textual Description:
Reads the debounced button status from Inport0 bit 0 or bit 1 and writes 1 (stable low reached) or 0 (otherwise) to the selected register.

Opcode:
001100PR (P=input select, R=destination register)

RTL Description:
Fetch: IR <- MEM(PC), PC <- PC + 1
Execute: DATA <- 0x01 when selected debounce counter is zero, else DATA <- 0x00
If R=0 then A <- DATA else B <- DATA.

Testbench Snapshot:
Capture the program listing that includes DEB at address 16 (00110000, DEB 0,A), plus the next line at address 17 (BCD0 A). If you also drive Inport0 in the testbench, include that stimulus lines in the same snapshot.

Simulation Waveform:
Add C1/IR, C1/PC, C1/CurrState, Inport0(0), Inport0(1), C1/Debounce0, C1/Debounce1, C1/A, and C1/B. Run until IR=0x30 or IR=0x31 at Execute, then screenshot register update.

2.5 BCC
Textual Description:
Two-byte conditional branch that updates PC only when carry C is clear.

Opcode:
001000P? (commonly 0x20 page0, 0x22 page1)

RTL Description:
Fetch: IR <- MEM(PC), PC <- PC + 1
Operand: MDR <- MEM(PC), PC <- PC + 1
Execute: if C=0 then PC <- {IR(1), MDR} else continue sequentially.

Testbench Snapshot:
Capture the program listing for BCC check: address 34 (00100000, BCC 40) and address 35 (0x28 target byte). Keep address 31 (CLR A) visible above it to show carry-clear setup.

Simulation Waveform:
Add C1/CurrState, C1/IR, C1/MDR, C1/C, and C1/PC. Run through Fetch -> Operand -> Execute for IR=0x20, then screenshot the Execute edge where C=0 and PC jumps to {IR(1), MDR}.

2.7 BCS
Textual Description:
Two-byte conditional branch that updates PC only when carry C is set.

Opcode:
001001P? (commonly 0x24 page0, 0x26 page1)

RTL Description:
Fetch: IR <- MEM(PC), PC <- PC + 1
Operand: MDR <- MEM(PC), PC <- PC + 1
Execute: if C=1 then PC <- {IR(1), MDR} else continue sequentially.

Testbench Snapshot:
Capture the program listing for BCS check: address 21 (11010000, COM A), address 24 (00100100, BCS 31), and address 25 (0x1F target byte). These three lines should be visible in one screenshot.

Simulation Waveform:
Add C1/CurrState, C1/IR, C1/MDR, C1/C, C1/ALU_C, and C1/PC. Run until IR=0x24 at Execute, then screenshot C=1 and the PC redirect to {IR(1), MDR}.
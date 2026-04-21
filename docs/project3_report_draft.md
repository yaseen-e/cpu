# Project 3 Report Draft (Assigned Instructions)

This draft follows the structure in the sample report and provides the five required items per instruction:
1. Textual description
2. RTL description
3. RAM snapshot table (`RAM_POS`, `Opcode`, `Instruction`, `Output`, `NOTES/INSTRUCTION VERIFYING`)
4. Timing diagram
5. Timing simulation

Notes for this codebase:
- CPU control phases are `Fetch`, `Operand`, `Memory`, `Execute`.
- Two-byte instructions (like BCC/BCS) use the operand byte in `MDR` and branch target `{IR(1), MDR}`.
- Behavioral instruction testing uses `microarm_sim` testbench with program encoded in `microram_sim.vhd`.
- Carry/branch integration testing uses `cputb1`.

---

## 2.6 BCDO (BCD0 in code)

### 1) Textual Description
The BCDO instruction takes register `A` or `B`, splits the byte into upper nibble and lower nibble, decodes each nibble into 7-segment encoding, and displays the decoded results. In this implementation, BCD outputs are latched into the DISP2 display path (`bcd0_mux` + `disp2_driver`) when the BCD strobe is asserted.

Opcode format used in CPU decode:
- `0011100R`
- `R=0` for `A` (`0x38`), `R=1` for `B` (`0x39`)

### 2) RTL Description
`Fetch:`
- `IR <- MEM(PC), PC <- PC + 1`

`Execute:`
- If `R=0`, `BCD0A_Strobe <- 1`
- If `R=1`, `BCD0B_Strobe <- 1`
- Display path latches:
- `DISP2_digit_low <- BCD( R(3 downto 0) )`
- `DISP2_digit_high <- BCD( R(7 downto 4) )`

### 3) Snapshot of RAM

| RAM_POS | Opcode | Instruction | Output | NOTES/INSTRUCTION VERIFYING |
|---|---|---|---|---|
| 0 | `00000000` | `LOAD page0, A` | A gets operand from target address | Setup value for BCD test |
| 1 | `00010011` | operand `0x13` | target address = 0x13 | points to data byte |
| 2 | `00111000` | `BCD0 A` | DISP2 updates using A nibble decode | verifies BCDO on A |
| 3 | `00001000` | `OUT A,P0` | Outport0 mirrors A (optional monitor) | visibility aid |
| 0x13 | `01110011` | test data (`0x73`) | expected display = 7 and 3 | nibble decode check |

### 4) Timing Diagram
Insert expected timing diagram figure showing:
- Cycle N: fetch (`IR <- MEM(PC)`)
- Cycle N+1: execute BCDO (`BCD0*_Strobe` pulse)
- Next display clock cycles: DISP2 segment outputs updated

Figure label suggestion:
- `Figure 2.6.1: BCDO Timing Diagram`

### 5) Timing Simulation
Insert simulation screenshot (waveform) showing:
- `IR = 0x38` or `0x39`
- one-cycle strobe on `BCD0A_Strobe` or `BCD0B_Strobe`
- corresponding `DISP2_SEG` updates after strobe

Figure label suggestion:
- `Figure 2.6.2: BCDO Timing Simulation`

---

## 2.25 DEB (Debounce)

### 1) Textual Description
The DEB instruction returns the debounced status of Input0 bit 0 (`DEB 0,R`) or Input0 bit 1 (`DEB 1,R`). If the selected input bit remains logic `0` for the full debounce window, destination register (`A` or `B`) is written with `1`; otherwise destination register is written with `0`.

Opcode format used in CPU decode:
- `001100PR`
- `P=0` selects `Inport0(0)`, `P=1` selects `Inport0(1)`
- `R=0` writes `A`, `R=1` writes `B`

### 2) RTL Description
`Fetch:`
- `IR <- MEM(PC), PC <- PC + 1`

`Execute:`
- If `P=0`: `DATA <- (Debounce0 == 0) ? 0x01 : 0x00`
- If `P=1`: `DATA <- (Debounce1 == 0) ? 0x01 : 0x00`
- If `R=0`: `A <- DATA`, else `B <- DATA`

Debounce counters (clocked by `mclk`):
- On selected input high: counter reloads to `DEBOUNCE_MAX`
- While input low: counter decrements to zero

### 3) Snapshot of RAM

| RAM_POS | Opcode | Instruction | Output | NOTES/INSTRUCTION VERIFYING |
|---|---|---|---|---|
| 0 | `00110000` | `DEB 0,A` | A becomes 0 or 1 | verify debounce on Input0 bit0 |
| 1 | `00001000` | `OUT A,P0` | Outport0 shows DEB result | monitor A result |
| 2 | `00110011` | `DEB 1,B` | B becomes 0 or 1 | verify debounce on Input0 bit1 |
| 3 | `00001101` | `OUT B,P1` | Outport1 shows DEB result | monitor B result |

### 4) Timing Diagram
Insert expected timing diagram figure showing:
- selected input transitions
- debounce counter decrement to zero
- DEB instruction fetch and execute
- destination register write at execute edge

Figure label suggestion:
- `Figure 2.25.1: DEB Timing Diagram`

### 5) Timing Simulation
Insert waveform screenshot showing:
- selected input held low long enough
- `Debounce0` or `Debounce1` reaching zero
- DEB execute cycle writing `0x01` into target register
- short-low or unstable case writing `0x00`

Figure label suggestion:
- `Figure 2.25.2: DEB Timing Simulation`

---

## 2.5 BCC (Branch on Carry Clear)

### 1) Textual Description
`BCC` is a two-byte branch instruction. It branches to the target memory location only when carry bit `C=0`. The branch target is formed by combining the page bit in opcode with the second byte operand, enabling all 512 addresses.

Opcode pattern used in CPU decode:
- `001000P?` (bit0 ignored by decode)
- Common practical opcodes used: `0x20` (page0), `0x22` (page1)

### 2) RTL Description
`Fetch:`
- `IR <- MEM(PC), PC <- PC + 1`

`Operand:`
- `MDR <- MEM(PC), PC <- PC + 1`

`Memory:`
- no data transfer (phase placeholder)

`Execute:`
- If `C=0`: `PC <- {IR(1), MDR}`
- Else: continue sequential execution

### 3) Snapshot of RAM

| RAM_POS | Opcode | Instruction | Output | NOTES/INSTRUCTION VERIFYING |
|---|---|---|---|---|
| 0 | `11110000` | `CLR A` | clears C via ALU CLR path | force `C=0` before BCC |
| 1 | `00100000` | `BCC page0,target` | condition check on C | should branch |
| 2 | `00010000` | target byte `0x10` | branch target addr 0x10 | BCC operand |
| 3 | `11110000` | `CLR A` | should be skipped if branch taken | not-taken marker |
| 0x10 | `00001000` | `OUT A,P0` | pass-path output | confirms branch taken |

### 4) Timing Diagram
Insert expected timing diagram figure showing:
- fetch + operand fetch for two-byte instruction
- execute cycle condition check `C=0`
- `PC` jump to `{IR(1),MDR}` when true

Figure label suggestion:
- `Figure 2.5.1: BCC Timing Diagram`

### 5) Timing Simulation
Insert waveform screenshot showing:
- `IR` loaded with BCC opcode
- `MDR` loaded with target
- `C=0` at execute
- `PC` changes to branch target address

Figure label suggestion:
- `Figure 2.5.2: BCC Timing Simulation`

---

## 2.7 BCS (Branch on Carry Set)

### 1) Textual Description
`BCS` is a two-byte branch instruction. It branches to the target memory location only when carry bit `C=1`. As with BCC, full 512-address reach is supported through page+operand target formation.

Opcode pattern used in CPU decode:
- `001001P?` (bit0 ignored by decode)
- Common practical opcodes used: `0x24` (page0), `0x26` (page1)

### 2) RTL Description
`Fetch:`
- `IR <- MEM(PC), PC <- PC + 1`

`Operand:`
- `MDR <- MEM(PC), PC <- PC + 1`

`Memory:`
- no data transfer (phase placeholder)

`Execute:`
- If `C=1`: `PC <- {IR(1), MDR}`
- Else: continue sequential execution

### 3) Snapshot of RAM

| RAM_POS | Opcode | Instruction | Output | NOTES/INSTRUCTION VERIFYING |
|---|---|---|---|---|
| 0 | `11110000` | `CLR A` | initialize | deterministic start |
| 1 | `11110001` | `CLR B` | initialize | deterministic start |
| 2 | `00000000` | `LOAD page0,A` | A gets test operand | setup ADD that sets C |
| 3 | `00011110` | operand `0x1E` | target data address | setup |
| 4 | `00000001` | `LOAD page0,B` | B gets test operand | setup |
| 5 | `00011111` | operand `0x1F` | target data address | setup |
| 6 | `10000000` | `ADD A` | C becomes 1 for overflowing unsigned sum | carry set condition |
| 7 | `00100100` | `BCS page0,target` | should branch | verifies BCS taken |
| 8 | `00010000` | target byte `0x10` | branch target addr 0x10 | BCS operand |
| 0x10 | `00001000` | `OUT A,P0` | pass output | branch confirmation |
| 0x1E | `11101111` | data `0xEF` (239) | ADD source | expected carry case |
| 0x1F | `00111001` | data `0x39` (57) | ADD source | expected carry case |

### 4) Timing Diagram
Insert expected timing diagram figure showing:
- two-byte fetch sequence
- ADD that sets `C`
- BCS execute cycle with `C=1`
- `PC` redirect to target

Figure label suggestion:
- `Figure 2.7.1: BCS Timing Diagram`

### 5) Timing Simulation
Insert waveform screenshot showing:
- `ALU_C` asserted during ADD
- `C` latched high
- BCS execute updates `PC` to target

Figure label suggestion:
- `Figure 2.7.2: BCS Timing Simulation`

---

## 3.1 Carry Bit

### 1) Textual Description
The CPU includes carry bit `C` in the condition code register and updates it according to ALU operation rules:
- ADD: set on unsigned carry-out
- SUB: set on unsigned borrow
- LSL: shifted-out MSB goes to C
- LSR: shifted-out LSB goes to C
- COM: C forced to 1
- CLR: C forced to 0
- Other instructions preserve C

### 2) RTL Description
For ALU instruction execute:
- `Y <- ALU(A_or_B, B_or_A, F)`
- `N,Z,V <- ALU flags`
- If instruction is in carry-writing set, `C <- ALU_C`

Carry-writing instruction families in this CPU:
- ADD/SUB/CLR
- LSL/LSR/COM

### 3) Snapshot of RAM

| RAM_POS | Opcode | Instruction | Output | NOTES/INSTRUCTION VERIFYING |
|---|---|---|---|---|
| 0 | `00000000` | `LOAD page0,A` | A <- 239 | carry-positive ADD test |
| 1 | `00011110` | operand `0x1E` | points to 239 | setup |
| 2 | `00000001` | `LOAD page0,B` | B <- 57 | carry-positive ADD test |
| 3 | `00011111` | operand `0x1F` | points to 57 | setup |
| 4 | `10000000` | `ADD A` | C expected = 1 | verify ADD carry set |
| 5 | `00100100` | `BCS page0,target` | branch on C=1 | carry verification by control flow |
| 6 | `00010000` | target `0x10` | pass path | test oracle |
| 0x10 | `00001000` | `OUT A,P0` | observable pass value | confirms carry behavior |
| 0x1E | `11101111` | data 239 | operand | unsigned overflow case |
| 0x1F | `00111001` | data 57 | operand | unsigned overflow case |

### 4) Timing Diagram
Insert expected timing diagram figure showing:
- ADD execute cycle
- `ALU_C` transition and `C` latch
- subsequent branch decision on carry

Figure label suggestion:
- `Figure 3.1.1: Carry Bit Timing Diagram`

### 5) Timing Simulation
Insert waveform screenshot showing:
- `A`, `B`, `ALU_OUT`, `ALU_C`, `C`
- BCS checking `C`
- pass-path output assertion (`Outport0 = 0x28` in integration test)

Figure label suggestion:
- `Figure 3.1.2: Carry Bit Timing Simulation`

---

## Suggested Figure Checklist

- [ ] 2.6 expected timing diagram
- [ ] 2.6 timing simulation waveform
- [ ] 2.25 expected timing diagram
- [ ] 2.25 timing simulation waveform
- [ ] 2.5 expected timing diagram
- [ ] 2.5 timing simulation waveform
- [ ] 2.7 expected timing diagram
- [ ] 2.7 timing simulation waveform
- [ ] 3.1 expected timing diagram
- [ ] 3.1 timing simulation waveform

## Suggested Appendix Tables

- Full opcode mapping table used in your implementation
- Full RAM image for each dedicated instruction test program
- Note on manual RAM switching workflow used in `cpu.vhd`

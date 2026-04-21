# Procedure: Generate Timing Diagrams, Timing Simulations, and RAM Snapshot Verification

This procedure is for producing report evidence for:
- 2.6 BCD0
- 2.25 DEB
- 2.5 BCC
- 2.7 BCS
- 3.1 Carry Bit

It includes exact line-level comment/uncomment edits for manual simulation/implementation switching and instruction-program switching.

---

## 1) Select Behavioral RAM Mode (required for instruction-by-instruction simulation)

File: [cpu.srcs/sources_1/new/cpu.vhd](../cpu.srcs/sources_1/new/cpu.vhd)

### 1.1 Component declaration toggle
1. Comment the `microram` declaration block at lines 64-71.
2. Uncomment the `microram_sim` declaration block at lines 75-82.

### 1.2 RAM instantiation toggle
1. Comment line 237 (`U2 : microram PORT MAP ...`).
2. Uncomment line 240 (`U2 : microram_sim PORT MAP ...`).

Result:
- CPU uses `microram_sim.vhd` memory content for behavioral instruction simulation.

---

## 2) Choose the Active Instruction Program in Behavioral RAM

File: [cpu.srcs/sources_1/new/microram_sim.vhd](../cpu.srcs/sources_1/new/microram_sim.vhd)

### 2.1 Where to edit
- Active opcode/data rows are currently lines 58-69.
- Instruction section templates are at:
  - BCD0 block: lines 71-75
  - DEB block: lines 77-81
  - BCC block: lines 83-87
  - BCS block: lines 89-93

### 2.2 Manual switching rule
1. Keep only one instruction set active for addresses being tested (for example addresses 0-4 or 0-1 depending on your case).
2. Comment the currently active rows (for example 58-69) when switching to a different instruction set.
3. Uncomment and fill the selected block rows for the current instruction test.
4. Keep memory data constants needed for your test in free locations and document those rows in your RAM snapshot table.

---

## 3) Configure Behavioral Testbench Runtime/Assertions

File: [cpu.srcs/sim_1/new/microarm_sim.vhd](../cpu.srcs/sim_1/new/microarm_sim.vhd)

### 3.1 Timing window and checks
- Simulation duration constant: line 37 (`sim_timeout`).
- Optional output assertion toggle: line 38 (`enable_result_assert`).
- Expected output value: line 39 (`expected_out0`).

Recommended usage:
1. For waveform-only capture, keep `enable_result_assert := false`.
2. For pass/fail capture with fixed expected result, set:
- line 38 to `true`
- line 39 to the expected output byte

### 3.2 DEB stimulus support
- DEB input stimulus is already present at lines 64-67.
- If you need custom DEB timing patterns, modify these lines and keep note of exact times for the report timing diagram.

---

## 4) Run Behavioral Simulation and Capture Timing Evidence

Files:
- [cpu.sim/sim_1/behav/xsim/cputb1_vhdl.prj](../cpu.sim/sim_1/behav/xsim/cputb1_vhdl.prj)
- [cpu.sim/sim_1/behav/xsim/microarm_sim.tcl](../cpu.sim/sim_1/behav/xsim/microarm_sim.tcl)
- [cpu.sim/sim_1/behav/xsim/elaborate_microarm_sim.bat](../cpu.sim/sim_1/behav/xsim/elaborate_microarm_sim.bat)
- [cpu.sim/sim_1/behav/xsim/simulate_microarm_sim.bat](../cpu.sim/sim_1/behav/xsim/simulate_microarm_sim.bat)

### 4.1 Compile and run
1. Run `compile.bat`.
2. Run `elaborate_microarm_sim.bat`.
3. Run `simulate_microarm_sim.bat`.

### 4.2 Timing waveform capture points
`microarm_sim.tcl` already includes recursive wave capture:
- line 4: `add_wave -r /`
- line 11: `run 45ms`

Capture screenshots for each instruction showing at least:
- `mclk`, `reset`
- `PC`, `IR`, `MDR`, `CurrState`
- `Outport0`/`Outport1`
- instruction-specific signals:
  - BCD0: `BCD0A_Strobe`/`BCD0B_Strobe`, `DISP2_SEG`, `DISP2_AN`
  - DEB: `Inport0(0)`, `Inport0(1)`, `Debounce0`, `Debounce1`
  - BCC/BCS: `C`, `PC`, target operand flow
  - Carry Bit: `ALU_C`, `C`, ALU op context

---

## 5) Verify RAM Snapshot Table for Each Instruction

For each instruction section in the report table (`RAM_POS`, `Opcode`, `Instruction`, `Output`, `NOTES/INSTRUCTION VERIFYING`):

1. Copy exact active rows from [cpu.srcs/sources_1/new/microram_sim.vhd](../cpu.srcs/sources_1/new/microram_sim.vhd) lines 55-96.
2. Confirm each row’s runtime effect in waveform:
- `RAM_POS` matches address consumed by `PC`/`MDR`
- `Opcode` matches `IR`
- `Output` matches observed output or branch behavior
3. Record one verification note per row (for example: branch taken, strobe pulsed, carry latched, debounce passed).

Tip:
- Keep a per-instruction copy of active RAM lines in your report appendix so the table and simulation screenshot always match.

---

## 6) Carry/Branch Integration Timing (cputb1)

Use `cputb1` when validating full carry + branch path with implementation-style RAM behavior.

Files:
- [cpu.srcs/sim_1/new/cputb1.vhd](../cpu.srcs/sim_1/new/cputb1.vhd)
- [cpu.sim/sim_1/behav/xsim/cputb1.tcl](../cpu.sim/sim_1/behav/xsim/cputb1.tcl)

Notes:
- `cputb1.tcl` line 11 runs for 6000ns.
- The testbench asserts expected carry/branch pass behavior through `Outport0`.

---

## 7) Switch Back to Implementation Mode (after behavioral capture)

File: [cpu.srcs/sources_1/new/cpu.vhd](../cpu.srcs/sources_1/new/cpu.vhd)

1. Uncomment `microram` declaration at lines 64-71.
2. Comment `microram_sim` declaration at lines 75-82.
3. Uncomment line 237 (`U2 : microram ...`).
4. Comment line 240 (`--U2 : microram_sim ...`).

Result:
- Design is back in implementation mode for synthesis/bitstream.

---

## 8) Per-Instruction Completion Checklist

For each of 2.6, 2.25, 2.5, 2.7, 3.1:
1. Active RAM rows finalized in `microram_sim.vhd`.
2. Behavioral simulation run completed.
3. Timing diagram screenshot captured.
4. Timing simulation screenshot captured.
5. RAM snapshot table verified from active rows and waveform behavior.
6. Notes column filled with direct verification statement.

# Project 3 Run and Test Procedure

## 1. Preparation
1. Open Vivado project file `cpu.xpr`.
2. Confirm top module is `top_cpu_disp2`.
3. Confirm constraints file `cpu_pins.xdc` is included.
4. Confirm memory init file `testfile.coe` is current.
5. Confirm testbench `cputb1.vhd` is present.

## 2. Simulation Baseline (XSim Batch Flow)
1. Open terminal in `cpu.sim/sim_1/behav/xsim`.
2. Run `compile.bat`.
3. Run `elaborate.bat`.
4. Run `simulate.bat`.
5. Check simulation output for assertion pass from `cputb1`.
6. Confirm expected baseline values:
   - `Outport0 = 0x28`
   - `RegA = 0x28`

## 3. Directed Simulation for Assigned Features
1. Extend the directed program/testbench for each assigned feature.
2. Re-run compile, elaborate, and simulate after each test change.

### DEB (2.25)
1. Drive Input0 bit0 and bit1 with controlled transitions.
2. Verify `DEB 0,R` and `DEB 1,R` behavior.
3. Confirm register becomes `1` only after stable low debounce window.

### BCC (2.5)
1. Create test where carry is clear before BCC and verify branch is taken.
2. Create test where carry is set before BCC and verify branch is not taken.
3. Verify branch target works across low and high memory addresses.

### BCS (2.7)
1. Create test where carry is set before BCS and verify branch is taken.
2. Create test where carry is clear before BCS and verify branch is not taken.
3. Verify branch target works across low and high memory addresses.

### BCDO (2.6)
1. Test lower and upper nibbles for values 0-9.
2. Test non-BCD nibble values and confirm hyphen fallback.
3. Verify output appears correctly on DISP2 path.
4. If instructor requires strict Output Port mapping, add and test direct Outport0/Outport1 behavior.

### Carry Bit (3.1)
1. Verify ADD carry rules:
   - `239 + 57` sets carry.
   - `127 + 10` does not set carry.
2. Verify SUB carry rules:
   - `14 - 20` sets carry.
   - `13 - 3` does not set carry.
3. Verify shift carry rules:
   - LSL shifts out MSB into carry.
   - LSR shifts out LSB into carry.
4. Verify COM sets carry and CLR clears carry.
5. Verify non-carry-modifying instructions preserve carry state.

## 4. Build Flow (Vivado)
1. Run Synthesis.
2. Resolve any functional warnings/errors.
3. Run Implementation.
4. Resolve DRC/timing issues.
5. Generate bitstream.

## 5. Flash/Program FPGA
1. Connect board and open Hardware Manager.
2. Program device with generated bitstream.
3. Verify reset behavior and normal startup.
4. Verify switch inputs and output LEDs.
5. Verify DISP2 behavior for BCDO paths.

## 6. Mixed Sim/Flash Regression Loop
1. After each RTL change, run simulation first.
2. If simulation passes, regenerate bitstream and re-program board.
3. Record both simulation and hardware evidence per requirement.
4. Update `docs/checklist.md` immediately with status changes.

## 7. Final Sign-Off
1. Confirm all assigned requirements are checked complete in `docs/checklist.md`.
2. Confirm all required test evidence is archived.
3. Confirm no unresolved synthesis, implementation, or simulation failures.
4. Finalize submission package (RTL, testbench, checklist, procedure, report artifacts).

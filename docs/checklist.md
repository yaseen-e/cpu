# Project 3 Checklist

## Assigned Sections

### 2.25 DEB Debounce
- [x] Implemented decode and execute path for `DEB 0,R` and `DEB 1,R`.
- [x] Implemented timer-based debounce counters with a 40-count window on DebClk.
- [x] `DEB 0` checks Input0 bit 0 and `DEB 1` checks Input0 bit 1.
- [x] Destination register gets `1` when stable low window is satisfied, else `0`.
- [ ] Add directed simulation test that explicitly proves 40 ms behavior under input transitions.
- [ ] Add board demo evidence showing DEB behavior for both bits.

### 2.5 BCC Branch on Carry Clear
- [x] Implemented two-byte branch behavior using second-byte target.
- [x] Branch condition uses carry clear.
- [x] 9-bit address path supports all 512 memory locations.
- [x] Included in directed simulation program flow and assertions.
- [ ] Add negative test proving branch is not taken when carry is set.

### 2.6 BCDO BCD Output
- [x] Implemented BCD decode of lower and upper nibbles.
- [x] Generates 7-segment patterns for 0-9 and hyphen fallback for non-BCD values.
- [x] Strobe architecture updates DISP2 through `bcd0_mux` and `disp2_driver`.
- [ ] Spec interpretation check: requirement text says send patterns to Output Port 0 and Output Port 1; current implementation routes to DISP2 path, not Outport0/Outport1 registers.
- [ ] Confirm with instructor whether current architecture is acceptable for 2.6.
- [ ] If required, add direct Outport0 and Outport1 7-segment pattern writes for BCDO.

### 2.7 BCS Branch on Carry Set
- [x] Implemented two-byte branch behavior using second-byte target.
- [x] Branch condition uses carry set.
- [x] 9-bit address path supports all 512 memory locations.
- [x] Directed simulation sequence validates carry-set branch path.
- [ ] Add negative test proving branch is not taken when carry is clear.

### 3.1 Carry Bit
- [x] Carry bit `C` added and stored in CPU status logic.
- [x] `ADD` sets carry on unsigned carry-out.
- [x] `SUB` sets carry on unsigned borrow.
- [x] `LSL` moves shifted-out MSB into carry.
- [x] `LSR` moves shifted-out LSB into carry.
- [x] `COM` always sets carry.
- [x] `CLR` always clears carry.
- [x] Other instructions preserve carry unless explicitly enabled for carry write.
- [ ] Add explicit assertion-level tests for each carry rule in isolation.

## General Project Requirements

### Core Integration
- [x] CPU, RAM, ALU, clocking, and top-level integration present.
- [x] Board pin constraints file present.
- [x] Behavioral testbench present.

### Build and Deployment
- [x] Vivado project present and synthesis run artifacts exist.
- [ ] Confirm latest full run of synthesis, implementation, and bitstream with current code revision.
- [ ] Program board with latest bitstream and record pass evidence.

### Testing and Verification
- [x] Directed carry/branch simulation test exists with assertions.
- [ ] Expand tests to cover all assigned functions independently.
- [ ] Add regression pass criteria document with expected values per test.
- [ ] Capture waveform screenshots or logs for report traceability.

## Per-Function Test Matrix

### DEB
- [ ] Simulate Input0 bit0 high-to-low transition and verify DEB 0,A timing threshold.
- [ ] Simulate Input0 bit1 high-to-low transition and verify DEB 1,B timing threshold.
- [ ] Verify register output `1` only after stable low window.
- [ ] Verify register output `0` while unstable or high.

### BCC
- [ ] Case 1 carry clear then BCC must branch.
- [ ] Case 2 carry set then BCC must not branch.
- [ ] Verify destination reaches high-memory and low-memory targets.

### BCS
- [ ] Case 1 carry set then BCS must branch.
- [ ] Case 2 carry clear then BCS must not branch.
- [ ] Verify destination reaches high-memory and low-memory targets.

### BCDO
- [ ] Test nibble values 0 through 9 for both lower and upper nibble.
- [ ] Test non-BCD nibble values and verify hyphen output behavior.
- [ ] Verify final displayed segment patterns on hardware.
- [ ] If required by instructor interpretation, verify output-port mapping behavior.

### Carry Bit Rules
- [ ] ADD examples: 239 + 57 sets carry, 127 + 10 clears carry.
- [ ] SUB examples: 14 - 20 sets carry, 13 - 3 clears carry.
- [ ] LSL captures shifted-out MSB into carry.
- [ ] LSR captures shifted-out LSB into carry.
- [ ] COM always gives carry = 1.
- [ ] CLR always gives carry = 0.
- [ ] Non-carry instructions preserve carry value.

### Completion Gate
- [ ] All assigned sections pass in simulation.
- [ ] All assigned sections pass on board.
- [ ] General requirements artifacts complete for submission.

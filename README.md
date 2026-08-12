# D Flip-Flop using Verilog

## Overview
This project implements a positive-edge-triggered D Flip-Flop with an asynchronous reset using Verilog HDL.

## Features
- Positive edge-triggered
- Asynchronous reset
- Verilog implementation
- Testbench included
- Simulation waveform support

## Truth Table

| Clock Edge | Reset | D | Q(next) |
|------------|-------|---|---------|
| Rising     | 0     | 0 | 0       |
| Rising     | 0     | 1 | 1       |
| X          | 1     | X | 0       |

## Files

- `d_flip_flop.v` - Verilog design
- `d_flip_flop_tb.v` - Testbench
- `simulation_result.png` - Waveform screenshot
- `README.md` - Project documentation

## Simulation

### Using Icarus Verilog

Compile:

```bash
iverilog -o dff d_flip_flop.v d_flip_flop_tb.v
```

Run:

```bash
vvp dff
```

Open waveform:

```bash
gtkwave d_flip_flop.vcd
```

## Expected Waveform

- Reset sets Q = 0.
- On every rising edge of the clock, Q follows D.
- Between clock edges, Q remains unchanged.

## Applications

- Registers
- Counters
- Shift Registers
- Memory Elements
- Digital Sequential Circuits

## Author

Your Name
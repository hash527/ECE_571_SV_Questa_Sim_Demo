````markdown
# QuestaSim Demo – Simple MUX in SystemVerilog

## Setup
```bash
vlib work
````

## Compile

```bash
vlog -source stimulus.sv ripple_carry_counter.sv
vlog -lint ripple_carry_counter.sv
vlog *.sv
```

## Run

```bash
vsim -c stimulus
```

### At the vsim prompt

```tcl
add wave sim:/stimulus/*
run -all
```

### One-liner with GUI and waveforms

```bash
vsim -debugDB stimulus -do "add wave sim:/stimulus/* ; run -all"
```

```

Do you want me to also add a **clone + run quick start section** (like `git clone …`, then run commands), or keep it strictly about QuestaSim?
```

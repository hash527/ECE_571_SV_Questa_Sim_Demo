````markdown
# ⚡ QuestaSim Demo – Simple MUX in SystemVerilog

This repo demonstrates how to set up, compile, and run a **SystemVerilog simulation** in QuestaSim using a simple MUX example.  

---

## 🚀 Quick Start  

```bash
# 1️⃣ Clone the repository
git clone https://github.com/your-username/questasim-mux-demo.git
cd questasim-mux-demo

# 2️⃣ Create a library directory (required by QuestaSim)
vlib work

# 3️⃣ Compile SystemVerilog files with error source info
vlog -source stimulus.sv ripple_carry_counter.sv

# 4️⃣ (Optional) Run static lint check to catch warnings/unused signals
vlog -lint ripple_carry_counter.sv

# 5️⃣ Compile all SystemVerilog files in the directory
vlog *.sv

# 6️⃣ Run simulation in CLI mode (no GUI)
vsim -c stimulus
````

---

## 🖥️ At the `vsim` Prompt

```tcl
# Add all signals from the stimulus module to the waveform viewer
add wave sim:/stimulus/*

# Run simulation until it finishes ($finish or $stop)
run -all
```

---

## 🎨 One-Liner with GUI + Waveforms

```bash
# Launch GUI, load all signals, and run the simulation to completion
vsim -debugDB stimulus -do "add wave sim:/stimulus/* ; run -all"
```

---

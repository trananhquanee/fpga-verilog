TB  = and_gate_tb.v
SRC = and_gate.v
SIM = sim.vvp
VCD = dump.vcd

all: $(VCD)

$(VCD): $(SIM)
	vvp $(SIM)

$(SIM): $(TB) $(SRC)
	iverilog -o $(SIM) $(TB) $(SRC)

wave: $(VCD)
	gtkwave $(VCD) &

clean:
	rm -f $(SIM) $(VCD)

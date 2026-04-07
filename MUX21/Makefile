TB  = MUX21_tb.v
SRC = MUX21.v
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

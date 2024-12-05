#remove .beam archives with clean

ERLC = erlc
MODULES=gms1 groupy gui worker
BEAMS= $(MODULES:=.beam)
all: $(BEAMS)
%.beam: %.erl 
	$(ERLC) $<
clean: 
	rm -f $(BEAMS)
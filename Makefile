TARGETS = count.10000.s count.unrolled all.unrolled
all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

mem.access: mem.access.cpp
	g++ $< -o $@

count.10000.s: mem.access
	mem.access > count.10000.s

count.unrolled: count.unrolled.s
	merlin32 $<

all.unrolled: all.unrolled.s count.10000.s
	merlin32 $<


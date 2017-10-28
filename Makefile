TARGETS = count.unrolled all.unrolled
all: $(TARGETS)

clean:
	$(RM) $(TARGETS)

mem.access: mem.access.cpp
	g++ $< -o $@
	mem.access > mem.access.txt

count.unrolled: count.unrolled.s
	merlin32 $<

all.unrolled: all.unrolled.s
	merlin32 $<


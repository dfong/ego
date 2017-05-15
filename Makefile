# test the self-printing programs in various languages

default: all

BIN=./bin
RUN=$(BIN)/xrun
GEN=$(BIN)/eggen
TESTER=$(BIN)/egtest
PPTESTER=$(BIN)/pptest

.PHONY: default all clean cppong table gentest manual generated
.PHONY: %.cmp gen_%

FILES := $(filter-out %.exe %.class %-notyet, $(wildcard ego*))

DOABLE_FILES := $(shell $(BIN)/hascomp $(FILES))

FILE_TARGETS := $(DOABLE_FILES:%=%.cmp)

all: manual generated ppongs;

manual: $(FILE_TARGETS)

# pattern rule to compile/run a test on a given source file
%.cmp: %
	$(TESTER) $<

%.ppong: %
	$(PPTESTER) $<

PPFILE=$(if $(shell $(BIN)/hascomp ppong.c),ppong.c.ppong,)

ppongs: $(PPFILE)

table:
	@wc -c $(filter-out %.desc, $(FILES)) gen_* \
	| egrep -v '\.exe$$|\.o$$|\.class$$' \
	| sort -n

clean:
	@echo "# cleaning up"
	/bin/rm -f *.exe *.pyc *.beam *.dump *.o *.out *.class gen_*

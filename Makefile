# test the self-printing programs in various languages

default: all clean

RUN=./xrun
GEN=./eggen
TESTER=./egtest
PPTESTER=./pptest

.PHONY: default all clean cppong table gentest manual generated
.PHONY: %.cmp gen_%

FILES:= \
	ego.c \
	ego.cpp \
	ego.pl \
	ego.py \
	ego.rb \
	ego.java \
	ego.erl \
	ego.go \
	ego.bash \
	ego.tcl \
	ego.awk \
	ego.mf

FILE_TARGETS := $(FILES:%=%.cmp)
GEN_TARGETS := $(patsubst eg.%_desc, gen_%, $(wildcard eg.*_desc))

all: manual generated ppongs;

manual: $(FILE_TARGETS)

generated: $(GEN_TARGETS)

# pattern rule to compile/run a test on a given source file
%.cmp: %
	$(TESTER) $<

gen_%: eg.%_desc
	$(GEN) < $< > ${@:gen_%=gen_ego.%} && $(TESTER) ${@:gen_%=gen_ego.%}

%.ppong: %
	$(PPTESTER) $<

ppongs: ppong.c.ppong

table: clean
	@wc -c $(FILES) | sort -n

clean:
	@echo "# cleaning up"
	/bin/rm -f *.exe *.pyc *.beam *.dump *.o *.out *.class gen_*

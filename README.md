### ego - self printing programs

this repo is mainly for use in testing various features of jenkins.

this directory contains self-contained self-printing programs
in various languages.  ego.LANGSUFFIX is the "best" self-printing
hand-tuned program so far.  ego2.LANGSUFFIX is another hand-tuned
program, for reference.

the pingpong.c program is a 2nd order self-printing program:
it prints a second program, that when run will print the
original program.

the eggen script uses a language description file (eg.LANGSUFFIX_desc)
to produce a self-printing program (not necessarily the shortest),
in a variety of languages.

pure-ego.c is a pure-c program (no hardcoded ascii constants).


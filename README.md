## ego

### self-printing programs

this repo is mainly for use in testing various features of jenkins.

this directory contains self-contained self-printing programs
in various languages.  ego._LANGSUFFIX_ is a self-printing
hand-tuned program so far.  ego2._LANGSUFFIX_ is another hand-tuned
program, for reference.

the pingpong.c program is a 2nd order self-printing program:
it prints a second program, that when run will print the
original program.

the eggen script uses a language description file (ego-XXXX.desc)
to produce a self-printing program (not necessarily the shortest),
in a variety of languages.

each self-printing program, including the generated programs,
is treated as a test which can succeed or fail depending on whether
the output of the program matches the source.

Example:

run all tests.  the default target is runs only tests that
have the requiisite _LANGUAGE_ compiler/interpreter installed
on the host system.

```
make
```


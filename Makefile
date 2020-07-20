CC=gcc
CFLAGS= -fno-stack-protector -masm=intel
all:test.c
	$(CC) -o mobf test.c $(CFLAGS)

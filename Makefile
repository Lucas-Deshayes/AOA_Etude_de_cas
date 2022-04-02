CC=clang
OPTFLAGS=-Ofast -fno-omit-frame-pointer -march=native -funroll-loops -g -Wall
OBJS=driver.o kernel.o rdtsc.o

all:	sgemm

sgemm:	$(OBJS)
	$(CC) -o $@ $^

kernel.o: kernel.c
	$(CC) $(OPTFLAGS) -D $(OPT) -c $< -o $@

clean:
	rm -rf $(OBJS) sgemm


# dossier des executables
BIN=./exe/

# cache utilise
CACHE=L2
TABMAQAO=456
WARMUPMAQAO=10
REPMAQAO=1000

# compilateurs
CC=gcc
CC2=icc

###

##
# options de compilations
##

# options de compilation non optimises
OPTFLAGS=-O0 -fno-omit-frame-pointer -g -Wall
OPTFLAGSf=-Ofast -fno-omit-frame-pointer -g -Wall
OPTFLAGS2=-O2 -fno-omit-frame-pointer -g -Wall
OPTFLAGS3=-O3 -fno-omit-frame-pointer -g -Wall

# options de compilation optimises
OPTFLAGS22=-O2 -fno-omit-frame-pointer -march=native -funroll-loops -g -Wall
OPTFLAGSff=-Ofast -fno-omit-frame-pointer -march=native -funroll-loops  -g -Wall
OPTFLAGS33=-O3 -fno-omit-frame-pointer -march=native -funroll-loops  -g -Wall

##
# memes options avec fopenmp
##

# options de compilation non optimises
OPTFLAGS_PARA=-fopenmp -O0 -fno-omit-frame-pointer -g -Wall
OPTFLAGSf_PARA=-fopenmp -Ofast -fno-omit-frame-pointer -g -Wall
OPTFLAGS2_PARA=-fopenmp -O2 -fno-omit-frame-pointer -g -Wall
OPTFLAGS3_PARA=-fopenmp -O3 -fno-omit-frame-pointer -g -Wall

# options de compilation optimises
OPTFLAGS22_PARA=-fopenmp -O2 -fno-omit-frame-pointer -march=native -funroll-loops -g -Wall
OPTFLAGSff_PARA=-fopenmp -Ofast -fno-omit-frame-pointer -march=native -funroll-loops  -g -Wall
OPTFLAGS33_PARA=-fopenmp -O3 -fno-omit-frame-pointer -march=native -funroll-loops  -g -Wall

###

# optimisation of the kernel
OPT=NOOPT # by default there is no optimisation

# compiled object files
DRIVER=driver
OBJS=$(DRIVER).o kernel.o rdtsc.o

all: gcc icc

gcc : gcc_o2 gcc_o2_opti gcc_o3 gcc_o3_opti gcc_of gcc_of_opti 

icc : icc_o2 icc_o2_opti icc_o3 icc_o3_opti icc_of icc_of_opti

print:
	echo $(DRIVER)

sujet2:	$(OBJS)
	$(CC) -o $@ $^

sujet2_para:	$(OBJS)
	$(CC) -fopenmp -o $@ $^

maqao_gcc: maqao_o2 maqao_o2_opti maqao_o3 maqao_o3_opti maqao_of maqao_of_opti

maqao_icc: maqao_icc_o2 maqao_icc_o2_opti maqao_icc_o3 maqao_icc_o3_opti maqao_icc_of maqao_icc_of_opti

maqao: maqao_gcc maqao_icc

clean:
	rm -rf *.o sujet2 ./exe/*

kernel.o: kernel.c
	$(CC) $(OPTFLAGS) -D $(OPT) -c $< -o $@


########################################################################
# GCC Compilations
########################################################################


## gcc 02
gcc_o2: $(DRIVER).o gcc_o2.o rdtsc.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_o2.o: kernel.c
	$(CC) $(OPTFLAGS2)  -D $(OPT) -c $< -o $@

gcc_o2_opti: $(DRIVER).o rdtsc.o gcc_o2_opti.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_o2_opti.o: kernel.c
	$(CC) $(OPTFLAGS22) -D $(OPT) -c $< -o $@

## gcc 03
gcc_o3: $(DRIVER).o rdtsc.o gcc_o3.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_o3.o: kernel.c
	$(CC) $(OPTFLAGS3) -D $(OPT) -c $< -o $@

gcc_o3_opti: $(DRIVER).o rdtsc.o gcc_o3_opti.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_o3_opti.o: kernel.c
	$(CC) $(OPTFLAGS33) -D $(OPT) -c $< -o $@

## gcc 0fast
gcc_of: $(DRIVER).o rdtsc.o gcc_of.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_of.o: kernel.c
	$(CC) $(OPTFLAGSf)  -D $(OPT) -c $< -o $@

gcc_of_opti: $(DRIVER).o rdtsc.o gcc_of_opti.o
	$(CC) -o $(BIN)$@ $^ -lm

gcc_of_opti.o: kernel.c
	$(CC) $(OPTFLAGSff)  -D $(OPT) -c $< -o $@


########################################################################
# GCC Compilations Parallelises
########################################################################


## gcc 02
gcc_o2_para: $(DRIVER).o gcc_o2_para.o rdtsc.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_o2_para.o: kernel.c
	$(CC) $(OPTFLAGS2_PARA) -D $(OPT) -c $< -o $@

gcc_o2_opti_para: $(DRIVER).o rdtsc.o gcc_o2_opti_para.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_o2_opti_para.o: kernel.c
	$(CC) $(OPTFLAGS22_PARA) -D $(OPT) -c $< -o $@

## gcc 03
gcc_o3_para: $(DRIVER).o rdtsc.o gcc_o3_para.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_o3_para.o: kernel.c
	$(CC) $(OPTFLAGS3_PARA) -D $(OPT) -c $< -o $@

gcc_o3_opti_para: $(DRIVER).o rdtsc.o gcc_o3_opti_para.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_o3_opti_para.o: kernel.c
	$(CC) $(OPTFLAGS33_PARA) -D $(OPT) -c $< -o $@

## gcc 0fast
gcc_of_para: $(DRIVER).o rdtsc.o gcc_of_para.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_of_para.o: kernel.c
	$(CC) $(OPTFLAGSf_PARA) -D $(OPT) -c $< -o $@

gcc_of_opti_para: $(DRIVER).o rdtsc.o gcc_of_opti_para.o
	$(CC) -fopenmp -o $(BIN)$@ $^ -lm

gcc_of_opti_para.o: kernel.c
	$(CC) $(OPTFLAGSff_PARA) -D $(OPT) -c $< -o $@


########################################################################
# ICC Compilations
########################################################################

## icc 02
icc_o2: $(DRIVER).o icc_o2.o rdtsc.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_o2.o: kernel.c
	$(CC2) $(OPTFLAGS2) -D $(OPT) -c $< -o $@

icc_o2_opti: $(DRIVER).o rdtsc.o icc_o2_opti.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_o2_opti.o: kernel.c
	$(CC2) $(OPTFLAGS22) -D $(OPT) -c $< -o $@

## icc 03
icc_o3: $(DRIVER).o rdtsc.o icc_o3.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_o3.o: kernel.c
	$(CC2) $(OPTFLAGS3) -D $(OPT) -c $< -o $@

icc_o3_opti: $(DRIVER).o rdtsc.o icc_o3_opti.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_o3_opti.o: kernel.c
	$(CC2) $(OPTFLAGS33) -D $(OPT) -c $< -o $@


## icc 0fast
icc_of: $(DRIVER).o rdtsc.o icc_of.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_of.o: kernel.c
	$(CC2) $(OPTFLAGSf) -D $(OPT) -c $< -o $@

icc_of_opti: $(DRIVER).o rdtsc.o icc_of_opti.o
	$(CC2) -o $(BIN)$@ $^ -lm

icc_of_opti.o: kernel.c
	$(CC2) $(OPTFLAGSff) -D $(OPT) -c $< -o $@


########################################################################
# maqao runs
########################################################################

#           #
# maqao gcc #
#           #


maqao_o2: gcc_o2
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_SIMPLE

maqao_o2_opti: gcc_o2_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_OPTI

maqao_o3: gcc_o3
	rm -rf maqao_2022*  maqao/maqao_$(CACHE)_GCC_O3_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_SIMPLE

maqao_o3_opti: gcc_o3_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_OPTI

maqao_of: gcc_of
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_SIMPLE

maqao_of_opti: gcc_of_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_OPTI


#           #
# maqao gcc para #
#           #


maqao_o2_para: gcc_o2_para
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_SIMPLE

maqao_o2_opti_para: gcc_o2_opti_para
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O2_OPTI

maqao_o3_para: gcc_o3_para
	rm -rf maqao_2022*  maqao/maqao_$(CACHE)_GCC_O3_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_SIMPLE

maqao_o3_opti_para: gcc_o3_opti_para
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_O3_OPTI

maqao_of_para: gcc_of_para
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_SIMPLE

maqao_of_opti_para: gcc_of_opti_para
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_GCC_OFAST_OPTI


#           #
# maqao icc #
#           #

maqao_icc_o2: icc_o2
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_O2_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_O2_SIMPLE

maqao_icc_o2_opti: icc_o2_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_O2_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_O2_OPTI

maqao_icc_o3: icc_o3
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_O3_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_O3_SIMPLE

maqao_icc_o3_opti: icc_o3_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_O3_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_O3_OPTI

maqao_icc_of: icc_of
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_OFAST_SIMPLE
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_OFAST_SIMPLE

maqao_icc_of_opti: icc_of_opti
	rm -rf maqao_2022* maqao/maqao_$(CACHE)_ICC_OFAST_OPTI
	maqao oneview -g --create-report=one uarch=KNIGHTS_MILL executable="./exe/$<" run_command="<executable> $(TABMAQAO) $(WARMUPMAQAO) $(REPMAQAO)"
	mv maqao_2022* maqao/maqao_$(CACHE)_ICC_OFAST_OPTI



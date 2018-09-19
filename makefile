# change application name here (executable output name)
TARGET=P1-Compi
 
# compiler
CC=gcc
# debug
DEBUG=-g
# optimisation
OPT=-O0
# warnings
WARN=-Wall
 
PTHREAD=-pthread
 
CCFLAGS=$(DEBUG) $(OPT) $(WARN) $(PTHREAD) -pipe
 
 
# linker
LD=gcc
LDFLAGS=$(PTHREAD) -export-dynamic
 
OBJS=    main.o
 
all: $(OBJS)
	$(LD) -o $(TARGET) $(OBJS) $(LDFLAGS)
	$(CC) src/main.c -o $(TARGET) $(WARN) -export-dynamic
	    
main.o: src/main.c
	$(CC) -c $(CCFLAGS) src/main.c -o main.o
    
clean:
	rm -f *.o $(TARGET)

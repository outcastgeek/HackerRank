CC=clang++
#CC=g++
LIBS =#-lkernel32 -luser32 -lgdi32 -lopengl32
CFLAGS=-Wall -g
EXE=$(BIN_DIR)/$(shell basename `pwd`)_cpp
#EXE=../bin/$(shell basename `pwd`)
SRCS=$(wildcard *.cpp)
OBJS=$(SRCS:.cpp=.o)

all: $(EXE)

$(EXE): $(OBJS)
	$(CC) -o $@ $(CFLAGS) $(OBJS) $(LIBS)

clean:
	-$(RM) $(EXE) $(OBJS) *.o *.exe
run:
	./$(EXE)
profile:
	../valgrind.sh ./$(EXE)

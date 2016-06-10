CC=swiftc
LIBS =#-lkernel32 -luser32 -lgdi32 -lopengl32
SFLAGS=-O
EXE=$(BIN_DIR)/$(shell basename `pwd`)_swift
SRCS=$(wildcard *.swift)

.PHONY: all debug release profile clean

all: debug

debug:   SFLAGS += -DDEBUG
release: SFLAGS += -DRELEASE
profile: SFLAGS += -Ounchecked

debug release profile: $(EXE)

$(EXE): $(OBJS)
	$(CC) -o $@ $(SFLAGS) $(SRCS) $(LIBS)

clean:
	-$(RM) $(EXE) *.o *.exe
run:
	./$(EXE)
profile:
	../valgrind.sh ./$(EXE)

CC         = /usr/bin/gcc
JAVAC      = javac
CCFLAGS    ?= -std=c89 -pedantic -Wall -Werror -g
LDFLAGS    ?= -lm
JAVACFLAGS ?= 
TARGETS     = String LinkedList RandomProgram.class
SOURCES     = $(wildcard *.c)
INCLUDES    = $(wildcard *.h)
OBJECTS     = $(SOURCES:.c=.o)

.PHONY: all clean

all: $(TARGETS)

MemoryIssue: MemoryIssue.o
	$(CC) -o $@ $^ $(LDFLAGS)

String: String.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -c $^ $(CCFLAGS)

%.class: %.java
	$(JAVAC) $^ $(JAVACFLAGS)

clean:
	rm -f $(TARGETS) $(OBJECTS) $(SOURCES:.c=.dbo) $(SOURCES:.c=.dla) $(SOURCES:.c=.dnm)

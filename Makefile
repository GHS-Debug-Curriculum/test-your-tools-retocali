CC         = gcc
JAVAC      = javac
CCFLAGS    ?= -std=c89 -pedantic -Wall -Werror
LDFLAGS    ?= -lm
JAVACFLAGS ?= 
TARGETS     = MemoryIssue Addresses TestJavaProgram.class
SOURCES     = $(wildcard *.c)
INCLUDES    = $(wildcard *.h)
OBJECTS     = $(SOURCES:.c=.o)

.PHONY: all clean

all: $(TARGETS)

MemoryIssue: MemoryIssue.o
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) -c $^ $(CCFLAGS)

%.class: %.java
	$(JAVAC) $^ $(JAVACFLAGS)

clean:
	rm -f $(TARGETS) $(OBJECTS) $(SOURCES:.c=.dbo) a.dla a.dnm

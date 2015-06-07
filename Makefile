ifndef CC
CC=gcc
CFLAGS= -Wall -Wextra -Wpedantic -std=c11
endif
LD=$(CC)

PROJECTNAME=Test_TrigonomeC

ODIR=build

LIBS=-lm

SOURCE=$(shell find my_math -follow -name "*.c")

all: $(OBJ)
	mkdir -p $(ODIR)
	@echo "lol"
	$(LD) $(CFLAGS) $(LIBS) $(SOURCE) -o $(ODIR)/$(PROJECTNAME)

clean:
	rm -f $(ODIR) 

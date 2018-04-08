# Commands
MAKE    = make

# Variables
DIRS = $(wildcard */.)
SUBDIRS = $(DIRS:/.=)

# Rules
all: 
	@for dir in $(SUBDIRS); do \
		[ ! -f "$$dir"/Makefile ] || $(MAKE) -C "$$dir"; \
	done

clean:
	@for dir in $(SUBDIRS); do \
		[ ! -f "$$dir"/Makefile ] || $(MAKE) clean -C "$$dir"; \
	done

help:
	@echo "Usage: make {all|clean|help}"

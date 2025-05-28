#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# <Put a Description Here>
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <Put a description of the supported targets here>
#
# Platform Overrides:
#      <Put a description of the supported Overrides here
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = P

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds
CPU = armv7e-m
ARCH = cortex-m4
SPECS = nosys.specs

# Compiler Flags and Defines
CC = gcc
#LD = 
LDFLAGS = $(INCLUDES)
#CFLAGS = -c
#CPPFLAGS = 
TARGET = c1m2

OBJS := $(SOURCES:.c=.o)

.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(SOURCES)
	$(CC) -D$(PLATFORM) $(LDFLAGS) -o $@ $^

.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map


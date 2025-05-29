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
# This is the makefile to create various targets.
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <Put a description of the supported targets here>
#
# Platform Overrides:
#      PLATFORM - Supports HOST or MSP432
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = PLACEHOLDER

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds
CPU = cortex-m4
ARCH = armv7e-m
SPECS = nosys.specs

# Compiler Flags and Defines
ifeq ($(PLATFORM), HOST)
CC = gcc
LD = ld
LDFLAGS = -Wl,-Map=$(TARGET).map
CFLAGS = -Wall -Werror -g -O0 -std=c99
CPPFLAGS = $(INCLUDES)
else
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
LDFLAGS = -T ../msp432p401r.lds
CFLAGS = -Wall -Werror -g -O0 -std=c99 -mthumb \
		 -mcpu=$(CPU) -march=$(ARCH) -mfloat-abi=hard -mfpu=fpv4-sp-d16 \
		 --specs=$(SPECS)
CPPFLAGS = $(INCLUDES)
endif

TARGET = c1m2
OBJS = $(SOURCES:.c=.o)
IMPLS = $(SOURCES:.c=.i)
ASMS = $(SOURCES:.c=.asm) $(TARGET).asm
DEPS = $(SOURCES:.c=.d)

#-------------------------------------------------------------------------------
%.i: %.c
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) -MD -E -o $@ $^

#-------------------------------------------------------------------------------
%.asm: %.c build
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) -S -o $@ $<
	objdump -d $(TARGET).out > $(TARGET).asm
	rm -f $(TARGET).out

#-------------------------------------------------------------------------------
.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(OBJS) compile-all
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ $(OBJS)

#-------------------------------------------------------------------------------
.PHONY: compile-all
compile-all: $(OBJS)

$(OBJS): $(SOURCES)
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) -c $^

#-------------------------------------------------------------------------------
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map $(OBJS) $(DEPS) $(IMPLS) $(ASMS)


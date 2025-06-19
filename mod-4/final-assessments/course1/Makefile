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
#      %.i - This is to generate an implementation file from a .c file; and
#            it generates the respective dependency (.d) file from the .c file.
#      %.asm - This is to generate an assembly file from a given .c file. The
#              executable file for the platform is also generated, disassembled
#              using objdump, and then deleted.
#      %.o - This is to generate an object file from a .c file. As a side effect
#            the respective dependency file is generated as well. This same
#            target is used for the compile-all target.
#      compile-all - This generates all .o files and their respective dependency
#                    files.
#      build - This generates all .o files, .d files, a .map, and finally runs
#              size on the output executable and prints that report to the
#              screen.
#      clean - This cleans up all generated files. Please pass in the platform
#              when wanting to clean the MSP432 generated files.
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
SZ = size
ODBJDUMP = objdump
LDFLAGS = -Wl,-Map=$(TARGET).map
CFLAGS = -Wall -Werror -g -O0 -std=c99
CPPFLAGS = $(INCLUDES)
else
CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
SZ = arm-none-eabi-size
ODBJDUMP = arm-none-eabi-objdump
LDFLAGS = -T ../msp432p401r.lds -Wl,-Map=$(TARGET).map
CFLAGS = -Wall -g -O0 -std=c99 -mthumb \
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
%.asm: %.c
	# Get the .asm file for the given file.
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) -S -o $@ $^
	# Compile and disassemble for executable asm.
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $(TARGET).out \
		$(SOURCES)
	$(ODBJDUMP) -d $(TARGET).out > $(TARGET).asm
	# Cleanup.
	rm -f $(TARGET).out $(TARGET).map

#-------------------------------------------------------------------------------
%.o: %.c
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) -MMD -MP -c $< -o $@

#-------------------------------------------------------------------------------
.PHONY: compile-all
compile-all: $(OBJS)

#-------------------------------------------------------------------------------
.PHONY: build
build: $(TARGET).out

$(TARGET).out: $(OBJS)
	$(CC) -D$(PLATFORM) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ $^
	$(SZ) -Atd $@

#-------------------------------------------------------------------------------
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map $(OBJS) $(DEPS) $(IMPLS) $(ASMS)


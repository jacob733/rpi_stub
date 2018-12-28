################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ARM_decode_table.c \
../gdb.c \
../instr.c \
../instr_comm.c \
../instr_util.c \
../loader.c \
../rpi2.c \
../serial.c \
../start1.c \
../util.c 

S_UPPER_SRCS += \
../start.S 

OBJS += \
./ARM_decode_table.o \
./gdb.o \
./instr.o \
./instr_comm.o \
./instr_util.o \
./loader.o \
./rpi2.o \
./serial.o \
./start.o \
./start1.o \
./util.o 

S_UPPER_DEPS += \
./start.d 

C_DEPS += \
./ARM_decode_table.d \
./gdb.d \
./instr.d \
./instr_comm.d \
./instr_util.d \
./loader.d \
./rpi2.d \
./serial.d \
./start1.d \
./util.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	$(CROSS_COMPILE)gcc -mcpu=cortex-a7 -marm -O2  -g -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	$(CROSS_COMPILE)gcc -mcpu=cortex-a7 -marm -O2  -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



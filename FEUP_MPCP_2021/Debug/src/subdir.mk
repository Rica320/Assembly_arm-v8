################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/AVE_64.s \
../src/CheckABS.s \
../src/ContPar.s \
../src/INTERVAL_64.s \
../src/MAX_HW.s \
../src/MAX_W.s \
../src/MIN_DW.s \
../src/SOMA_V.s 

C_SRCS += \
../src/FEUP_MPCP_2021.c 

OBJS += \
./src/AVE_64.o \
./src/CheckABS.o \
./src/ContPar.o \
./src/FEUP_MPCP_2021.o \
./src/INTERVAL_64.o \
./src/MAX_HW.o \
./src/MAX_W.o \
./src/MIN_DW.o \
./src/SOMA_V.o 

C_DEPS += \
./src/FEUP_MPCP_2021.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: GCC Assembler 10.2.1 [aarch64-none-elf]'
	aarch64-none-elf-as.exe -g -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler 10.2.1 [aarch64-none-elf]'
	aarch64-none-elf-gcc.exe -O0 -g -Wall -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


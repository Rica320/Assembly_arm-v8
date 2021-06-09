################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/AVE_64.s \
../src/ContPar.s \
../src/HORNER.s \
../src/INTERVAL_64.s \
../src/InternProduct.s \
../src/MAX_HW.s \
../src/MAX_W.s \
../src/MIN_DW.s \
../src/NCHAR.s \
../src/SIZE_CHARS.s \
../src/SOMA_V.s \
../src/calc_poly_tab.s \
../src/checkabs_up202007962_1MIEIC04.s \
../src/conta_intervalo.s \
../src/conta_ocorr.s \
../src/cosseno.s \
../src/erfpos.s \
../src/func.s \
../src/histo.s \
../src/nVogal.s \
../src/normV.s \
../src/ocorr.s \
../src/opmat_up202007962_1MIEIC04.s \
../src/prodint.s \
../src/rotF.s \
../src/selecteduppercase_up202007962_1MIEIC04.s 

C_SRCS += \
../src/FEUP_MPCP_2021.c 

OBJS += \
./src/AVE_64.o \
./src/ContPar.o \
./src/FEUP_MPCP_2021.o \
./src/HORNER.o \
./src/INTERVAL_64.o \
./src/InternProduct.o \
./src/MAX_HW.o \
./src/MAX_W.o \
./src/MIN_DW.o \
./src/NCHAR.o \
./src/SIZE_CHARS.o \
./src/SOMA_V.o \
./src/calc_poly_tab.o \
./src/checkabs_up202007962_1MIEIC04.o \
./src/conta_intervalo.o \
./src/conta_ocorr.o \
./src/cosseno.o \
./src/erfpos.o \
./src/func.o \
./src/histo.o \
./src/nVogal.o \
./src/normV.o \
./src/ocorr.o \
./src/opmat_up202007962_1MIEIC04.o \
./src/prodint.o \
./src/rotF.o \
./src/selecteduppercase_up202007962_1MIEIC04.o 

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



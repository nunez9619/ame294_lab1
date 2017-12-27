################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
L138_LCDK_aic3106_init.obj: ../L138_LCDK_aic3106_init.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.8/include" --include_path="C:/omapl138/bsl/inc" --include_path="C:/LCDK/L138_support" --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="L138_LCDK_aic3106_init.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

stereo.obj: ../stereo.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.8/include" --include_path="C:/omapl138/bsl/inc" --include_path="C:/LCDK/L138_support" --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="stereo.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

vectors_intr.obj: ../vectors_intr.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv6/tools/compiler/c6000_7.4.8/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv6/tools/compiler/c6000_7.4.8/include" --include_path="C:/omapl138/bsl/inc" --include_path="C:/LCDK/L138_support" --diag_wrap=off --diag_warning=225 --display_error_number --preproc_with_compile --preproc_dependency="vectors_intr.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '



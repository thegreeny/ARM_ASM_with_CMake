cmake_minimum_required(VERSION 3.17)

project(testApp)

# Enable ASM and C
enable_language(C ASM)

# Define all Files:
add_executable(
    testApp
    "HelloWorld.s"
)

add_compile_options(
    testApp
    "-mcpu=cortex-m0" # specific for cortex-m0
)

# Complete the output with .elf extension
set_target_properties(testApp PROPERTIES SUFFIX ".elf")

#####################################################################
# Post Build Commands:
# - extract binary

# Find ObjCopy (Specified in Toolchain):
find_program(OBJ_COPY "${OBJ_COPY_PATH}")

# To copy out the binary:
#arm-none-eabi-objcopy -O binary base.elf output.bin

add_custom_command(
    TARGET testApp
    POST_BUILD
    COMMAND "${OBJ_COPY}"
    ARGS -O binary $<TARGET_FILE:testApp> output.bin
    #ARGS -O ihex $<TARGET_FILE:testApp> output.hex
)

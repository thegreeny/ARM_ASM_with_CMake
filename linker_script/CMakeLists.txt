cmake_minimum_required( VERSION 3.17 )

add_executable( linker_script )

target_sources(
 linker_script
 PRIVATE 
   boot.S
   thumb.S )

# Complete the output with .elf extension
set_target_properties( linker_script PROPERTIES SUFFIX ".elf" )

target_link_options( linker_script PRIVATE -T ${CMAKE_CURRENT_SOURCE_DIR}/linker_script.lds )

#####################################################################
# Post Build Commands:
# - extract binary

add_custom_command(
  TARGET linker_script
  POST_BUILD
  COMMAND "${OBJ_COPY}"
  ARGS -O binary $<TARGET_FILE:linker_script> output.bin
  #ARGS -O ihex $<TARGET_FILE:linker_script> output.hex
  COMMENT "Generate $<TARGET_FILE:linker_script> -> output.bin" )

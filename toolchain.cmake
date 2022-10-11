set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER    "arm-none-eabi-gcc.exe"    )
set(CMAKE_CXX_COMPILER  "arm-none-eabi-g++.exe"    )
set(CMAKE_ASM_COMPILER  "arm-none-eabi-gcc.exe"    )
set(OBJ_COPY_PATH       "arm-none-eabi-objcopy.exe")

# Use the following Compiler:
if (UNIX)
	set(CMAKE_C_COMPILER    "arm-none-eabi-gcc"    )
	set(CMAKE_CXX_COMPILER  "arm-none-eabi-g++"    )
	set(CMAKE_ASM_COMPILER  "arm-none-eabi-gcc"    )
	set(OBJ_COPY_PATH       "arm-none-eabi-objcopy")
endif (UNIX)
# With startup files (auto-init):
#set(CMAKE_EXE_LINKER_FLAGS "--specs=nosys.specs" CACHE INTERNAL "")

# WITHOUT startup files:
set(CMAKE_EXE_LINKER_FLAGS "--specs=nosys.specs -nostartfiles" CACHE INTERNAL "")

# Only use the Compiler in the given Path:
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

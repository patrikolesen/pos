ENABLE_LANGUAGE(CXX ASM)

set(CMAKE_ASM_COMPILER i686-elf-as)
set(CMAKE_CXX_COMPILER i686-elf-c++)
set(CMAKE_CXX_FLAGS "-ffreestanding -O0 -g -Wall -Wextra -fno-exceptions -fno-rtti")
set(PLATFORM_LINKER_FLAGS "-ffreestanding -nostdlib -O2 -lgcc")

SET(PLATFORM_LAYOUT "${CMAKE_SOURCE_DIR}/src/kernel/linker.ld")

ADD_EXECUTABLE(pos.bin 
  boot.s
  kernel.cpp
)
SET_TARGET_PROPERTIES(pos.bin PROPERTIES LINK_FLAGS 
  "-T ${PLATFORM_LAYOUT} ${PLATFORM_LINKER_FLAGS}")
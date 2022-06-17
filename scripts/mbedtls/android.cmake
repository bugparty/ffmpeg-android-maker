# Enable NEON for all ARM processors
set(ANDROID_ARM_NEON TRUE)

# By including this file all necessary variables that point to compiler, linker, etc.
# will be setup. Well, almost all.
# Two variables have to be set before this line though:
# ANDROID_PLATOFORM - the API level to compile against (number)
# ANDROID_ABI - the ABI of the target platform
include("$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")

# AS_EXECUTABLE (AV1 Codec Library's variable) should point to an assembler
# For x86 and x86_64 ABIs it needs yasm
# For armeabi-v7a and arm64-v8a it is ok to use GNU assembler
# When ANDROID_ABI is x86 or x86_64,
# then CMAKE_ASM_NASM_COMPILER variable will point to the yasm compiler (it is set by android.toolchain.cmake)
if(DEFINED CMAKE_ASM_NASM_COMPILER)
  set(AS_EXECUTABLE ${CMAKE_ASM_NASM_COMPILER})
else()
  set(AS_EXECUTABLE ${_CMAKE_TOOLCHAIN_PREFIX}as)
endif()

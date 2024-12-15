include(CMakePrintHelpers)
message(STATUS "SDK PATH:" $ENV{FOURDSDK_ROOT})

set(CMAKE_PREFIX_PATH $ENV{FOURDSDK_ROOT}; $ENV{FOURDSDK_ROOT}/math-slots/crmath)

set(SWIG_DIR $ENV{FOURDSDK_ROOT}"/share/swig/4.2.1")

find_package(Python3 REQUIRED COMPONENTS Interpreter Development NumPy)
include_directories(${Python3_INCLUDE_DIRS})
include_directories(${Python3_NumPy_INCLUDE_DIRS})

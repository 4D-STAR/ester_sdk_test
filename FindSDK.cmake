include(CMakePrintHelpers)
message(STATUS "SDK PATH:" $ENV{FOURDSDK_ROOT})

set(CMAKE_PREFIX_PATH $ENV{FOURDSDK_ROOT}; $ENV{FOURDSDK_ROOT}/math-slots/default) #CBLAS is only available for default

include_directories($ENV{FOURDSDK_ROOT}/math-slots/default/include) # Otherwise cblas.h is not found
set(SWIG_DIR $ENV{FOURDSDK_ROOT}"/share/swig/4.2.1") # Non-default location of swig

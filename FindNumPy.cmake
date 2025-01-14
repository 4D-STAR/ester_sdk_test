# A bit hacky, but this supports conda installations of python/numpy
execute_process(
    COMMAND "${PYTHON_EXECUTABLE}"
    -c "import numpy; print(numpy.get_include())"
    OUTPUT_VARIABLE Python3_NumPy_INCLUDE_DIRS
    OUTPUT_STRIP_TRAILING_WHITESPACE
)
message(INFO ${Python3_NumPy_INCLUDE_DIRS})
include_directories(${Python3_NumPy_INCLUDE_DIRS})

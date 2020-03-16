INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_MEASURER measurer)

FIND_PATH(
    MEASURER_INCLUDE_DIRS
    NAMES measurer/api.h
    HINTS $ENV{MEASURER_DIR}/include
        ${PC_MEASURER_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    MEASURER_LIBRARIES
    NAMES gnuradio-measurer
    HINTS $ENV{MEASURER_DIR}/lib
        ${PC_MEASURER_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MEASURER DEFAULT_MSG MEASURER_LIBRARIES MEASURER_INCLUDE_DIRS)
MARK_AS_ADVANCED(MEASURER_LIBRARIES MEASURER_INCLUDE_DIRS)


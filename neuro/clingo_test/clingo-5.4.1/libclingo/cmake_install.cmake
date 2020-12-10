# Install script for directory: /media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/bin/libclingo.so.3.0"
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/bin/libclingo.so.3"
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/bin/libclingo.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so.3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclingo.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/clingo.hh"
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/clingo.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo/ClingoTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo/ClingoTargets.cmake"
         "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/CMakeFiles/Export/lib/cmake/Clingo/ClingoTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo/ClingoTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo/ClingoTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo" TYPE FILE FILES "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/CMakeFiles/Export/lib/cmake/Clingo/ClingoTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo" TYPE FILE FILES "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/CMakeFiles/Export/lib/cmake/Clingo/ClingoTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Clingo" TYPE FILE FILES
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/ClingoConfig.cmake"
    "/media/home/ludovico/aai/neuro/clingo_test/clingo-5.4.1/libclingo/ClingoConfigVersion.cmake"
    )
endif()


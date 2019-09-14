# Install script for directory: /home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/best_jill_forever/catkin_ws/devel")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags.so.2.1.2"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags.so.2"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags_nothreads.so.2.1.2"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags_nothreads.so.2"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/lib/libgflags_nothreads.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so.2.1.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libgflags_nothreads.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/gflags" TYPE FILE FILES
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/include/gflags/gflags.h"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/include/gflags/gflags_declare.h"
    "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/include/gflags/gflags_completions.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags" TYPE FILE RENAME "gflags-config.cmake" FILES "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/gflags-config-install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags" TYPE FILE FILES "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/gflags-config-version.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags/gflags-export.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags/gflags-export.cmake"
         "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/CMakeFiles/Export/lib/cmake/gflags/gflags-export.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags/gflags-export-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags/gflags-export.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags" TYPE FILE FILES "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/CMakeFiles/Export/lib/cmake/gflags/gflags-export.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/gflags" TYPE FILE FILES "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/CMakeFiles/Export/lib/cmake/gflags/gflags-export-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/src/gflags_completions.sh")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

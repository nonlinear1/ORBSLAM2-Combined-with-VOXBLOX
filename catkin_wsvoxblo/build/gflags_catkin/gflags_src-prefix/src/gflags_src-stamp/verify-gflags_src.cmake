set(file "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/v2.1.2.zip")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "5cb0a1b38740ed596edb7f86cd5b3bd8")
set(attempt 0)
set(succeeded 0)
while(${attempt} LESS 3 OR ${attempt} EQUAL 3 AND NOT ${succeeded})
  file(MD5 "${file}" actual_value)
  if("${actual_value}" STREQUAL "${expect_value}")
    set(succeeded 1)
  elseif(${attempt} LESS 3)
    message(STATUS "MD5 hash of ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
Retrying download.
")
    file(REMOVE "${file}")
    execute_process(COMMAND ${CMAKE_COMMAND} -P "/home/best_jill_forever/catkin_ws/build/gflags_catkin/gflags_src-prefix/src/gflags_src-stamp/download-gflags_src.cmake")
  endif()
  math(EXPR attempt "${attempt} + 1")
endwhile()

if(${succeeded})
  message(STATUS "verifying file... done")
else()
  message(FATAL_ERROR "error: MD5 hash of
  ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
")
endif()

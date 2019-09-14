execute_process(COMMAND "/home/best_jill_forever/catkin_ws/build/voxblox_tango_interface/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/best_jill_forever/catkin_ws/build/voxblox_tango_interface/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

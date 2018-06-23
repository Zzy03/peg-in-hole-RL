execute_process(COMMAND "/home/wzc/cat_ws/build/arbotix_ros-indigo-devel/arbotix_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/wzc/cat_ws/build/arbotix_ros-indigo-devel/arbotix_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

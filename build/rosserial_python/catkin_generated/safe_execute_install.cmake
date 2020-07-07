execute_process(COMMAND "/home/soyeong/sve_design_project/build/rosserial_python/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/soyeong/sve_design_project/build/rosserial_python/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

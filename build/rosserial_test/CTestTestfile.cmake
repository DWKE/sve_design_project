# CMake generated Testfile for 
# Source directory: /home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_test
# Build directory: /home/soo/sve_design_project/build/rosserial_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_rosserial_test_rostest_test_rosserial_server_socket.test "/home/soo/sve_design_project/build/rosserial_test/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/soo/sve_design_project/build/rosserial_test/test_results/rosserial_test/rostest-test_rosserial_server_socket.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_test --package=rosserial_test --results-filename test_rosserial_server_socket.xml --results-base-dir \"/home/soo/sve_design_project/build/rosserial_test/test_results\" /home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_test/test/rosserial_server_socket.test ")
add_test(_ctest_rosserial_test_rostest_test_rosserial_server_serial.test "/home/soo/sve_design_project/build/rosserial_test/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/soo/sve_design_project/build/rosserial_test/test_results/rosserial_test/rostest-test_rosserial_server_serial.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_test --package=rosserial_test --results-filename test_rosserial_server_serial.xml --results-base-dir \"/home/soo/sve_design_project/build/rosserial_test/test_results\" /home/soo/sve_design_project/src/control/rosserial-noetic-devel/rosserial_test/test/rosserial_server_serial.test ")
subdirs("gtest")
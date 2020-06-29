# Install script for directory: /home/soo/sve_design_project/src/localization/ublox/ublox_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/soo/sve_design_project/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE PROGRAM FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE PROGRAM FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/setup.bash;/home/soo/sve_design_project/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE FILE FILES
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/setup.bash"
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/setup.sh;/home/soo/sve_design_project/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE FILE FILES
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/setup.sh"
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/setup.zsh;/home/soo/sve_design_project/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE FILE FILES
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/setup.zsh"
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/soo/sve_design_project/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/soo/sve_design_project/install" TYPE FILE FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ublox_msgs/msg" TYPE FILE FILES
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/Ack.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/AidALM.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/AidEPH.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/AidHUI.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgANT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgCFG.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgDAT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgDGNSS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgGNSS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgGNSS_Block.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgHNR.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgINF.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgINF_Block.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgMSG.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgNAV5.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgNAVX5.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgNMEA.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgNMEA6.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgNMEA7.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgPRT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgRATE.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgRST.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgSBAS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgTMODE3.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/CfgUSB.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfINS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfMEAS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfRAW.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfRAW_Block.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfSTATUS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/EsfSTATUS_Sens.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/HnrPVT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/Inf.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MgaGAL.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MonGNSS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MonHW.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MonHW6.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MonVER.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/MonVER_Extension.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavATT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavCLOCK.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavDGPS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavDGPS_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavDOP.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavPOSECEF.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavPOSLLH.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavPVT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavPVT7.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavRELPOSNED.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSAT.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSAT_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSBAS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSBAS_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSOL.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSTATUS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSVIN.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSVINFO.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavSVINFO_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavTIMEGPS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavTIMEUTC.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavVELECEF.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/NavVELNED.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmALM.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmEPH.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmRAW.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmRAWX.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmRAWX_Meas.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmRAW_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmRTCM.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmSFRB.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmSFRBX.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmSVSI.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/RxmSVSI_SV.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/TimTM2.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/UpdSOS.msg"
    "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/msg/UpdSOS_Ack.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ublox_msgs/cmake" TYPE FILE FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/ublox_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/soo/sve_design_project/devel/include/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/soo/sve_design_project/devel/share/roseus/ros/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/soo/sve_design_project/devel/share/common-lisp/ros/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/soo/sve_design_project/devel/share/gennodejs/ros/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/soo/sve_design_project/devel/lib/python2.7/dist-packages/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/soo/sve_design_project/devel/lib/python2.7/dist-packages/ublox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/ublox_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ublox_msgs/cmake" TYPE FILE FILES "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/ublox_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ublox_msgs/cmake" TYPE FILE FILES
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/ublox_msgsConfig.cmake"
    "/home/soo/sve_design_project/build/ublox_msgs/catkin_generated/installspace/ublox_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ublox_msgs" TYPE FILE FILES "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/soo/sve_design_project/devel/lib/libublox_msgs.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so"
         OLD_RPATH "/opt/ros/melodic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libublox_msgs.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/soo/sve_design_project/src/localization/ublox/ublox_msgs/include/" REGEX "/\\.svn$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/soo/sve_design_project/build/ublox_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/soo/sve_design_project/build/ublox_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

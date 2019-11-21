SmartVehicle Design Project
===================

Install PX4
------------------
```
sudo apt update   
sudo apt upgrade   
sudo usermod -a -G dialout $USER   
wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh   
source ubuntu_sim_nuttx.sh   
sudo apt install ros-melodic-geographic-msgs   
wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_ros_gazebo.sh
source ubuntu_sim_ros_gazebo.sh   
sudo apt upgrade libignition-math2   
reboot   
git clone https://github.com/DWKE/Firmware.git   
cd Firmware   
git checkout v1.8.1   
make posix_sitl_default gazebo   
```

Build
------------------
```
git clone https://github.com/DWKE/sve_design_project.git   
cd sve_design_project   
git checkout -b my_branch_name   
catkin build   
```

Commit
------------------
```
git add .   
git commit -m 'comment'   
git push origin my_branch_name   
```

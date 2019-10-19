SmartVehicle Design Project
===================

dependancies
------------------
```
sudo apt-get update   
sudo apt-get install python-catkin-tools python-rosinstall-generator -y   
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh   
sudo chmod u+x ./install_geographiclib_datasets.sh   
sudo ./install_geographiclib_datasets.sh   
sudo apt-get install python-catkin-tools   
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

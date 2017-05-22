sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

sudo apt-get -y update

sudo apt-get -y install ros-kinetic-desktop-full

apt-cache search ros-kinetic

sudo rosdep init

rosdep update



sudo apt-get -y install python-rosinstall
echo 'Ensuring base package are installed'
sudo apt-get -y install ros-kinetic-ros-base 
echo 'Ensuring gazebo plugins are installed'
sudo apt-get -y install ros-kinetic-gazebo-plugins
echo 'Ensuring navigation packages are installed'
sudo apt-get -y install ros-kinetic-navigation

echo 'Ensuring needed packages were installed'
sudo apt-get -y install ros-kinetic-turtlebot-gazebo ros-kinetic-turtlebot-rviz-launchers  ros-kinetic-warehouse-ros  

echo 'Now installing some extra packages'
sudo apt-get -y install  ros-kinetic-gazebo-ros ros-kinetic-gazebo-plugins ros-kinetic-gazebo-ros-control python-rosdep python-wstool ros-kinetic-ros ros-kinetic-warehouse-ros libspnav-dev 




echo "export TURTLEBOT_STAGE_MAP_FILE=/maps/maze.yaml" >> .bashrc
echo "export TURTLEBOT_3D_SENSOR=kinect" >> .bashrc
echo "export TURTLEBOT_STACKS=hexagons" >> .bashrc
echo "export TURTLEBOT_SIMULATION=false" >> .bashrc
echo "export TURTLEBOT_RAPP_PACKAGE_WHITELIST=[rocon_apps, turtlebot_rapps]" >> .bashrc
echo "export TURTLEBOT_STDR_MAP_FILE=/maps/sparse_obstacles.yaml" >> .bashrc
echo "export TURTLEBOT_SERIAL_PORT=/dev/kobuki" >> .bashrc
echo "export TURTLEBOT_BASE=kobuki" >> .bashrc
echo "export TURTLEBOT_RAPP_PACKAGE_BLACKLIST=[]" >> .bashrc
echo "export TURTLEBOT_TYPE=turtlebot" >> .bashrc
echo "export TURTLEBOT_STAGE_WORLD_FILE=/maps/stage/maze.world" >> .bashrc
echo "export TURTLEBOT_BATTERY=/sys/class/power_supply/BAT0" >> .bashrc
echo "export TURTLEBOT_NAME=turtlebot" >> .bashrc

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt-get install libfreenect-dev

sudo apt-get install ros-kinetic-freenect-launch

mkdir ~/kinectdriver 
cd ~/kinectdriver 
git clone https://github.com/avin2/SensorKinect 
cd SensorKinect/Bin/
tar xvjf SensorKinect093-Bin-Linux-x64-v5.1.2.1.tar.bz2
cd Sensor-Bin-Linux-x64-v5.1.2.1/
sudo ./install.sh


sudo rosdep init

rosdep update

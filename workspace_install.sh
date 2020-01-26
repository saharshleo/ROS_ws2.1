# First run this commands in terminal inside ROS_ws2.1
# sudo chmod +x workspace_install.sh
# ./workspace_install.sh

# Creating and building catkin_ws
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make

# source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

# To make sure your workspace is properly overlayed by the setup script, make sure ROS_PACKAGE_PATH environment variable includes the directory you're in. 
echo $ROS_PACKAGE_PATH

# Create package named SRA
cd ~/catkin_ws/src
catkin_create_pkg SRA std_msgs rospy roscpp

cd ~/catkin_ws
catkin_make
. ~/catkin_ws/devel/setup.bash

# Check dependencies
rospack depends SRA
roscd SRA
cat package.xml




# LAUKIK
# cd ~/catkin_ws/src
# catkin_create_pkg sra std_msgs rospy roscpp

# cd ~/catkin_ws
# catkin_make
# echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
# . ~/catkin_ws/devel/setup.bash

# rospack depends1 sra

# cd ~/catkin_ws/src/sra
# rm -rf *
# cd ~/ROS_ws2.1/ROS_Python
# cp -r . ~/catkin_ws/src/sra

# cd ~/catkin_ws
# catkin_make
# cd ~/catkin_ws/devel/sra/scripts
# sudo chmod +x Publisher.py Publisher_ForwardKinematics.py Publisher_InverseKinematics.py Subscriber.py SubscriberSocketTCP.py

# cd ~/ROS_ws2.1/ESP-IDF
# cp -r ROS_SRA19 ~/esp/esp-idf/components
# mkdir ~/esp/esp-idf/codes
# cp -r Server_with_Servo_Control Servo_Set_Zero Servo_Sweep TCP_Server ~/esp/esp-idf/codes
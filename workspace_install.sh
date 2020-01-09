# First run this commands in terminal inside ROS_ws2.1
# sudo chmod +x workspace_install.sh
# ./workspace_install.sh

cd ~/catkin_ws/src
catkin_create_pkg sra std_msgs rospy roscpp

cd ~/catkin_ws
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
. ~/catkin_ws/devel/setup.bash

rospack depends1 sra

cd ~/catkin_ws/src/sra
rm -rf *
cd ~/ROS_ws2.1/ROS_Python
cp -r . ~/catkin_ws/src/sra

cd ~/catkin_ws
catkin_make
cd ~/catkin_ws/devel/sra/scripts
sudo chmod +x Publisher.py Publisher_ForwardKinematics.py Publisher_InverseKinematics.py Subscriber.py SubscriberSocketTCP.py

cd ~/ROS_ws2.1/ESP-IDF
cp -r ROS_SRA19 ~/esp/esp-idf/components
mkdir ~/esp/esp-idf/codes
cp -r Server_with_Servo_Control Servo_Set_Zero Servo_Sweep TCP_Server ~/esp/esp-idf/codes
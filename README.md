# dummy_ros2_ws

# build
colcon build
colcon build --packages-select py_pubsub

# run 
. /opt/ros/foxy/setup.sh 
. /home/lulav/dev/dummy_ros2_ws/install/setup.bash

ros2 run py_pubsub talker
ros2 run py_pubsub listener
# This is an auto generated Dockerfile for ros:ros1-bridge
# generated from docker_images_ros2/ros1_bridge/create_ros_ros1_bridge_image.Dockerfile.em
FROM ros:foxy-ros-base-focal

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu focal main" > /etc/apt/sources.list.d/ros1-latest.list

# setup keys
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

ENV ROS2_DISTRO foxy

RUN apt-get update && apt-get install -y openssh-server

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-ros1-bridge=0.9.6-1* \
    ros-foxy-demo-nodes-cpp=0.9.3-1* \
    ros-foxy-demo-nodes-py=0.9.3-1* \
    && rm -rf /var/lib/apt/lists/*

# install and config cycloneDDS
RUN  apt-get update && apt install -y ros-foxy-rmw-cyclonedds-cpp
ENV  RMW_IMPLEMENTATION rmw_cyclonedds_cpp

COPY dockers/ros_entrypoint.sh /

RUN mkdir -p /home/lulav/dev/ros2_ws

# RUN git clone https://github.com/lulav/dummy_ros2_ws.git?a=1
ADD . /home/lulav/dev/ros2_ws

WORKDIR /home/lulav/dev/ros2_ws
RUN colcon build 

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
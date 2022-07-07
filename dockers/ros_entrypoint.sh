#!/bin/bash
set -e

source /opt/ros/foxy/setup.bash 
source /home/lulav/dev/ros2_ws/install/setup.bash

exec "$@"
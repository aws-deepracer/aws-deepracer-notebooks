#!/bin/bash
set -e
set -x

echo "Building DeepRacer ROS packages"

ROS_DISTRO=melodic
ROOT_DIR=/opt/amazon

cd $ROOT_DIR
source /opt/ros/$ROS_DISTRO/setup.bash

echo "Installing ros dependencies"
rosdep install --from-paths src --ignore-src -y
rm -rf build/ install/
echo "Doing colcon build"
colcon build
#!/bin/bash

echo "robot name?"
read DUCKIEBOT_NAME


dts duckiebot demo --demo_name all --duckiebot_name $DUCKIEBOT_NAME --package_name car_interface --image duckietown/dt-car-interface:daffy-arm32v7

sleep 20

dts duckiebot demo --demo_name lane_following --duckiebot_name $DUCKIEBOT_NAME --package_name duckietown_demos --image duckietown/dt-core:daffy-lighting-system-arm32v7

sleep 60

dts duckiebot keyboard_control $DUCKIEBOT_NAME
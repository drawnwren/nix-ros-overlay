
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, sensor-msgs, catkin, robot-state-publisher, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-lunar-dynamic-robot-state-publisher";
  version = "1.1.1";

  src = fetchurl {
    url = https://github.com/peci1/dynamic_robot_state_publisher-release/archive/release/lunar/dynamic_robot_state_publisher/1.1.1-0.tar.gz;
    sha256 = "1e99d88d7ce5592f2098d699dde48719deada4f81609ad35660822c360467179";
  };

  buildInputs = [ kdl-parser robot-state-publisher dynamic-reconfigure sensor-msgs roscpp ];
  propagatedBuildInputs = [ kdl-parser robot-state-publisher dynamic-reconfigure sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Improved ROS robot_state_publisher which can update the robot model via dynamic_reconfigure.'';
    #license = lib.licenses.BSD;
  };
}
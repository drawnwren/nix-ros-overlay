
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros-ign-interfaces";
  version = "0.233.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/galactic/ros_ign_interfaces/0.233.3-1.tar.gz";
    name = "0.233.3-1.tar.gz";
    sha256 = "1b1a48d3b863b10f18e5444fc1d95ae874c99b251cb96e5f5e1c8c104ea0e02f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Ignition from ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
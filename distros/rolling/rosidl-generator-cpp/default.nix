
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-core, ament-index-python, ament-lint-auto, ament-lint-common, python3, rosidl-cli, rosidl-cmake, rosidl-generator-c, rosidl-generator-type-description, rosidl-parser, rosidl-pycommon, rosidl-runtime-cpp }:
buildRosPackage {
  pname = "ros-rolling-rosidl-generator-cpp";
  version = "4.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/rolling/rosidl_generator_cpp/4.4.1-1.tar.gz";
    name = "4.4.1-1.tar.gz";
    sha256 = "4415cc2a796593849642463037b25d6cf2499ac985a225f1ddc218019ee6c5ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-cmake-core ament-index-python python3 rosidl-cli rosidl-cmake rosidl-generator-c rosidl-generator-type-description rosidl-parser rosidl-pycommon rosidl-runtime-cpp ];
  nativeBuildInputs = [ ament-cmake ament-cmake-core python3 rosidl-pycommon ];

  meta = {
    description = ''Generate the ROS interfaces in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}

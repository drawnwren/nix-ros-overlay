
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, control-msgs, joint-limits, lifecycle-msgs, pluginlib, rclcpp-lifecycle, rcpputils, rcutils, ros2-control-test-assets, tinyxml2-vendor, urdf }:
buildRosPackage {
  pname = "ros-jazzy-hardware-interface";
  version = "4.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/hardware_interface/4.11.0-1.tar.gz";
    name = "4.11.0-1.tar.gz";
    sha256 = "af9c0cddc3c2b321b57239569b721ff48bd69e3e639057d27c7e47e1ab1fbdf0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h ];
  checkInputs = [ ament-cmake-gmock ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs joint-limits lifecycle-msgs pluginlib rclcpp-lifecycle rcpputils rcutils tinyxml2-vendor urdf ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "ros2_control hardware interface";
    license = with lib.licenses; [ asl20 ];
  };
}

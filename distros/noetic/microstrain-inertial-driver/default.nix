
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, curl, diagnostic-aggregator, diagnostic-updater, geometry-msgs, jq, mavros-msgs, message-generation, message-runtime, microstrain-inertial-msgs, nav-msgs, nmea-msgs, roscpp, roslint, sensor-msgs, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-microstrain-inertial-driver";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/noetic/microstrain_inertial_driver/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "c0d9c2d7d66864da90a0b49dd510113333f010c626cb238ed8727c946188b529";
  };

  buildType = "catkin";
  buildInputs = [ curl jq message-generation roslint ];
  propagatedBuildInputs = [ cmake-modules diagnostic-aggregator diagnostic-updater geometry-msgs mavros-msgs message-runtime microstrain-inertial-msgs nav-msgs nmea-msgs roscpp sensor-msgs std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ros_mscl package provides a driver for the LORD/Microstrain inertial products.'';
    license = with lib.licenses; [ mit ];
  };
}
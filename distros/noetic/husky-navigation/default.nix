
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, gmapping, map-server, move-base, navfn, roslaunch }:
buildRosPackage {
  pname = "ros-noetic-husky-navigation";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/noetic/husky_navigation/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "c456785c370bd7553a85877b67dd60b4ba4313946788af2111b367424e1b000e";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner gmapping map-server move-base navfn ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the Clearpath Husky'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
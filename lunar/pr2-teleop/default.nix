
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, tf, catkin, std-msgs, actionlib, rospy, topic-tools, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-pr2-teleop";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/pr2_teleop/0.6.1-0.tar.gz;
    sha256 = "dfce13bf3684064551c11fab7ddb19eef06936cd580ed94b14e431df377db1c9";
  };

  buildInputs = [ pr2-controllers-msgs actionlib std-msgs geometry-msgs tf topic-tools roscpp rospy ];
  propagatedBuildInputs = [ pr2-controllers-msgs actionlib std-msgs geometry-msgs tf topic-tools roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_teleop package'';
    #license = lib.licenses.TODO;
  };
}
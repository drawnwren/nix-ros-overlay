
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, assimp, cmake, console-bridge, eigen, gtest, octomap, ros-industrial-cmake-boilerplate, tesseract-common, tesseract-support }:
buildRosPackage {
  pname = "ros-noetic-tesseract-geometry";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_geometry/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "67bdb418c137fe3d7cf4c96aac1d81251c66da77de513c33b76515479d728905";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest tesseract-support ];
  propagatedBuildInputs = [ assimp console-bridge eigen octomap tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_geometry package'';
    license = with lib.licenses; [ asl20 ];
  };
}

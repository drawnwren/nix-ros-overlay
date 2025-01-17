# Define all supported ROS distros

self: super: {
  rosPackages = rec {
    recurseForDerivations = true;
    lib = super.lib // import ../lib { inherit lib self; };

    noetic = import ./distro-overlay.nix {
      version = 1;
      distro = "noetic";
      python = self.python3;
    } self super;

    foxy = import ./distro-overlay.nix {
      version = 2;
      distro = "foxy";
      python = self.python3;
    } self super;

    humble = import ./distro-overlay.nix {
      version = 2;
      distro = "humble";
      python = self.python3;
    } self super;

    iron = import ./distro-overlay.nix {
      version = 2;
      distro = "iron";
      python = self.python3;
    } self super;

    jazzy = import ./distro-overlay.nix {
      version = 2;
      distro = "jazzy";
      python = self.python3;
    } self super;

    rolling = import ./distro-overlay.nix {
      version = 2;
      distro = "rolling";
      python = self.python3;
    } self super;
  };
}

let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/4008381882569ab4773f2ba0d7b7bbde8f665672.tar.gz") { config = {}; overlays = []; };
in

pkgs.mkShell {
  # Environment variable declarations

  # Set the name of the nix-shell. Default is "nix-shell"
  name="dockers";

  packages = with pkgs; [
    direnv
    neofetch

    # For lsusb
    usbutils
  ];
}

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

    # Better git experience
    stgit

    # don't even bother installing docker ??? WTF?? Black magic???
    # You do have to setup the docker daemon though (Imagine if you had NixOS...)
    #   (at least it can be a user script to perma-start the user level docker daemon)
    docker

    # For lsusb
    usbutils

    # For whatever
    nodejs
  ];
}

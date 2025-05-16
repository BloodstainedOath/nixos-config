{
  description = "Flakes";

  inputs = {
    # 📦 Fetch the latest nixpkgs from the unstable branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  # 📤 Define what this flake outputs
  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";           # 🖥️ Target system architecture
    lib = nixpkgs.lib;                 # 🔧 Nix library functions
    pkgs = import nixpkgs { inherit system; };  # 📦 Get packages for the system
  in {
    nixosConfigurations = {
      yharnam = lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix           # 📄 Your main NixOS system config
        ];
      };
    };
  };
}

{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/desktop.nix
      ./modules/sound.nix
      ./modules/fonts.nix
      ./modules/user.nix
      ./modules/portal.nix
      ./modules/nvidia.nix
      ./modules/services.nix
      ./modules/locale.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "yharnam";
  networking.networkmanager.enable = true;


  environment.systemPackages = with pkgs; [
    vim
    wget
    zsh
    git
    kitty
    mtpfs
    gvfs
    curl
    nautilus
    kdePackages.kate
    zip
    unzip
    lsd
    bat
  ];

  system.stateVersion = "24.11";
}

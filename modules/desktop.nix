{ config, pkgs, ... }:

{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.gvfs.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    waybar
    wofi
    rofi
    xdg-desktop-portal-hyprland
    swww
    waypaper
  ];

  services.libinput.enable = true;
}

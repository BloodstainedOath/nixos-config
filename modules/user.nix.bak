{ config, pkgs, ... }:

{
#   users.defaultUserShell = pkgs.zsh;
  users.users.hunter = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      firefox
      vscodium
      vlc
      eog
    ];
  };

  programs.firefox.enable = true;
}

{ pkgs, config }:
{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "qa-tgn";
  tagion.services.tagionwave.enable = true;
  tagion.services.tagionshell.enable = true;
  system.stateVersion = "24.05";
}

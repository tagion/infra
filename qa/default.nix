{ ... }:
{
  imports = [
    ./uranus.nix
  ];

  networking.hostName = "uranus";
  tagion.services.tagionwave.enable = true;
  tagion.services.tagionshell.enable = true;
  system.stateVersion = "23.11";
}

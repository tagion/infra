{ pkgs, ... }:
{
  imports = [
    ./uranus.nix
  ];

  networking.hostName = "uranus";
  # tagion.services.tagionwave.enable = true;
  # tagion.services.tagionshell.enable = true;
  system.stateVersion = "23.11";

  programs.git.enable = true;

  environment.systemPackages = with pkgs; [
    git-crypt
  ];

  services.github-runners.qa = {
    name = "qa@uranus";
    tokenFile = ../secrets/github_pat;
    url = "https://github.com/tagion/tagion";
    ephemeral = false;
    extraLabels = [ "qa" "qa-1" "nixos" ];
  };

  virtualisation.docker.enable = true;
}

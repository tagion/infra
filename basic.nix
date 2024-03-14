{ pkgs, config }:
{
  nixpkgs.config.allowUnfree = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.tailscale.enable = true;
  services.openssh.enable = true;

  system.stateVersion = "23.05";
}

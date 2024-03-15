{ ... }:
{
  nixpkgs.config.allowUnfree = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # boot.loader.efi.efiSysMountPoint = "/boot/efi";

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.fish.enable = true;
  programs.neovim.enable = true;

  services.tailscale.enable = true;
  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = false;
  services.openssh.settings.PermitRootLogin = "no";

  services.avahi = {
    nssmdns4 = true;
    ipv4 = true;
    ipv6 = true;
    publish = {
      enable = true;
      addresses = true;
    };
  };
}

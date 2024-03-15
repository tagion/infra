{ ... }:
{
  users.users.base = {
    isNormalUser = true;
    description = "base";
    extraGroups = [ "networkmanager" "wheel" ];

    openssh.authorizedKeys.keys =
      [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBaYxpA8y/MHE1toC/GLT1Uv/8DA32h5wu850UF1bb/2"
      ];
  };
}

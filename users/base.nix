{ ... }:
{
  users.users.base = {
    isNormalUser = true;
    description = "base";
    extraGroups = [ "networkmanager" "wheel" ];

    openssh.authorizedKeys.keys =
      [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBaYxpA8y/MHE1toC/GLT1Uv/8DA32h5wu850UF1bb/2" # lucasnethaj
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDoZZp/uUNCakdC1tO7SNGtGYA2BtOyKE8tIA/qh4NJC7Nmaw4EfMq4+QNnLRvEn4mcYCrOdHTRlvA0vsq2sSiGbUwEzYa3P+qO25acEKlwBWwHFF5EqydfsG9j2XpyemqkOIjNXtjaZdsyxe32hPGQ1RRL+6WJIUCImHxyHP+y7qKLwwBb/MZXX8Hl8zOPnCXidrQcPPrxft4v/7hVaEh4npOLe9K+4ysEB7sBXgCrpso365KjDBqOGx02v1wc5/lhpufcyur0hDJVJDMJuNMpX2F425RGFYx99eD3VOgeMn7tDthPbdSsZ6G4IEGNb/9Eg3csMFBLMJT6mWQTmU6Sdnl68VfnTj6Lywoxcs4G9lbuQjUIMaVorveWq4oD6DFxbHeVh8NpfoEyCx6CO+83OELJIYHV6A+eRUItSfcZYU5wLaxTxd9h0171FE0BFP+XtkLc5mM9UJVrPT5tzSX8o9yDsgutxLBpa/+HlYTmViSIwXDkLN4QWqXwexG3558=" # imrying
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKPjNCQmJiaFNj7FNooH+BxZunFCQ3qgLkdz2mwhGzKF" # cbleser
      ];
  };
}

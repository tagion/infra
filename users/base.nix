{ ... }:
{
  users.users.base = {
    isNormalUser = true;
    description = "base";
    extraGroups = [ "networkmanager" "wheel" "docker" ];

    openssh.authorizedKeys.keys =
      [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBaYxpA8y/MHE1toC/GLT1Uv/8DA32h5wu850UF1bb/2" # lucasnethaj
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDoZZp/uUNCakdC1tO7SNGtGYA2BtOyKE8tIA/qh4NJC7Nmaw4EfMq4+QNnLRvEn4mcYCrOdHTRlvA0vsq2sSiGbUwEzYa3P+qO25acEKlwBWwHFF5EqydfsG9j2XpyemqkOIjNXtjaZdsyxe32hPGQ1RRL+6WJIUCImHxyHP+y7qKLwwBb/MZXX8Hl8zOPnCXidrQcPPrxft4v/7hVaEh4npOLe9K+4ysEB7sBXgCrpso365KjDBqOGx02v1wc5/lhpufcyur0hDJVJDMJuNMpX2F425RGFYx99eD3VOgeMn7tDthPbdSsZ6G4IEGNb/9Eg3csMFBLMJT6mWQTmU6Sdnl68VfnTj6Lywoxcs4G9lbuQjUIMaVorveWq4oD6DFxbHeVh8NpfoEyCx6CO+83OELJIYHV6A+eRUItSfcZYU5wLaxTxd9h0171FE0BFP+XtkLc5mM9UJVrPT5tzSX8o9yDsgutxLBpa/+HlYTmViSIwXDkLN4QWqXwexG3558=" # imrying
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDosF2vFGIPrUj/cQB5p/Rg7twOF7zjqkNE7lhLxJbxw4R+cJeqTVITrA/JXZU5BOXs4AOAEkC8rL5Davw1ZpsRGn9PB2Tc8idDrXfFGrAx17XnEZ9Fjp905fM5XUpIvsGgynCEXI4pTMsUTZgIW3S5dbOk/8OyEPdTTc+6w64XYTN3n3QHq5wS5cNBUgn9wOIvbIJ4AxdLOyRbrdSkPs7XsB91A5GO12hkyTvwkMcJeoxZCVtF++5S2GAgQcHIV1Sin9Ho87YK55hivz5gH/zMAFyeRhvYIo46PXBc2u/fFmZYTk4tuX6cdsBTE4yIZ1ICIPA8Fxbjhr3/H6wrAHVcyQqWuSZEte9LNC8ZAk0wtwLVFPdChL9GNk0pZ/3Ve2SwLtNC3v1bV/DDDWFsaAugAi4EHgZ3rt+6kJsEMYQ25xNg/GYwU5nb3QWNODSiu8+nkrwwxc094q9ITeHrJ+/19sCQZoCKzCInIsapX9C6+HgolwQG0AHI6ACm9Fw0YBTq3Tzt/wFJLIZ9KAijt7p4LgKcr56zasioOzTd51nSlelGfN3c6EqY4pj3OrQgGRkuzZNMyA87PXtVNd0HPv7AH2o6BHmS+vnqaYF6a7joIUSDWjmvFCzTBPHpEc7f8HROGiEH1WfKFhe+FymafF86JwdutAZBc+ZJoSnXyQBnQ==" # cbleser
      ];
  };
}

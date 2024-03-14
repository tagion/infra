{
  description = "Tagion infrastructure";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.tagion.url = "github:tagion/tagion/current";

  outputs = { self, nixpkgs, tagion }: {
    formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;

    nixosConfigurations.qa =
      nixpkgs.lib.nixosSystem {
        modules = [
          ./basic.nix
          tagion.nixosModules.default
          ./qa/default.nix
        ];
      };
  };
}

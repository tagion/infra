{
  description = "Tagion infrastructure";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.tagion.url = "github:tagion/tagion/current";

  outputs = { self, nixpkgs, tagion }:
    let pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixpkgs-fmt;

      nixosConfigurations.qa =
        nixpkgs.lib.nixosSystem {
          modules = [
            ./basic.nix
            ./users/base.nix
            tagion.nixosModules.default
            ./qa/default.nix
          ];
        };

      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          git-crypt
          git
        ];
      };
    };
}

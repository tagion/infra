If you need to update the secrets or deploy to a new machine, then you'll need to unlock the git-crypt store. The secrets will automatically be encrypted again when committing.

```bash
./unlock.sh
```

To rebuild the os configuration run

```bash
nixos-rebuild switch --flake .#qa
```

Tagion infrastructure

Resources:
https://astro.github.io/microvm.nix/intro.html
https://github.com/astro/microvm.nix
https://lgug2z.com/articles/handling-secrets-in-nixos-an-overview/

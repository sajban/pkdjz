{
  description = "A modern set of nix packages, using flake-parts";

  inputs = {
    nixpkgs = { type = "indirect"; id = "nixpkgs"; };

    flake-parts = {
      type = "indirect";
      id = "flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

  };

  outputs = inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; }
      (import ./flakePart.nix);
}

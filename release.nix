with import <nixpkgs> {};

let
  config = {
    packageOverrides = pkgs: rec{
      haskellPackages = pkgs.haskellPackages.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          celestial = haskellPackages.callPackage ./celestial.nix {};
	};
      };
    };
  };
  pkgs = import <nixpkgs> { inherit config; };
in 
{
  celestial = pkgs.haskellPackages.celestial;
}

with import <nixpkgs> {
  overlays =  [
    (self: super:
    let
      lib = super.lib;
    in rec {
      python38 = super.python38.override {
        packageOverrides = self: super: {
          beautifulsoup4 = super.beautifulsoup4.overrideAttrs (old: {
            propagatedBuildInputs = lib.remove super.lxml old.propagatedBuildInputs;
          });
        };
      };
      python38Packages = python38.pkgs;
    })
  ];
};

pkgs.mkShell {
  name = "penv";
  buildInputs = [
    (python38.withPackages (
      ps: with ps; [
        (callPackage ./nixpkgs/dqct.nix {})
      ]
    ))
    pkgs.docker
    pkgs.libffi
    pkgs.pango
    pkgs.docker-compose
  ];
}

with import <nixpkgs> {};

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

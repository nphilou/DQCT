with import <unstable> {};

(python38.withPackages (
    ps: with ps; [
      (callPackage ./nixpkgs/dqct.nix {})
    ]
  )
).env

# DQCT

This repo will contain files and instructions to install the [HBP-MIP Data Quality Control Tool](https://github.com/HBPMedical/DataQualityControlTool)
on [NixOS](https://nixos.org/)

## Installation

- clone the repo of the tool (https://github.com/HBPMedical/DataQualityControlTool) to your favorite directory
- clone this repo too
- copy `.envrc` (if you are using direnv), `shell.nix` and `nixpkgs` folder to `yourFavoriteDirectory/DataQualityControlTool`
- run `direnv allow` if you are using direnv
- let NixOS build derivations and run tests for DataQualityControlTool

## Usage

- run `qctoolgui` for the shell

## Details
- `shell.nix` will create a shell with python 3.8 and DataQualityControlTool
- `nixpkgs/dqct.nix` is the DataQualityControlTool nix package file
- `nixpkgs/tabulator.nix` and `nixpkgs/tableschema.nix` are the corresponding python packages
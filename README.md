# DQCT

This repo will contain files and instructions to install the [HBP-MIP Data Quality Control Tool](https://github.com/HBPMedical/DataQualityControlTool)
on [NixOS](https://nixos.org/), MacOS and Ubuntu using Nix package manager

## Installation

### NixOS

- clone this repo
- install Docker: https://nixos.wiki/wiki/Docker
- run `nix-shell shell.nix`

### MacOS

- clone this repo
- install Nix by running `curl -L https://nixos.org/nix/install | sh`
- install Docker
- run `nix-shell shell_darwin.nix`

### Ubuntu

- clone this repo
- install Nix by running `curl -L https://nixos.org/nix/install | sh`
- install Docker
- run `nix-shell shell_ubuntu.nix`

## Usage

- run `qctoolgui` from the shell
#!/usr/bin/env bash

read -p 'Project Name: ' proj_name

echo "
with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "${proj_name}";
  buildInputs = [ python38 pipenv ];
  }
" >> shell.nix

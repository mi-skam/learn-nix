{ pkgs ? import <nixpkgs> { } }:
let message = "hello nix.";
in pkgs.mkShell {
  buildInputs = with pkgs; [ cowsay ];
  shellHook = ''
    cowsay ${message}
  '';
}

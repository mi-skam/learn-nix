let
  simpleDerivation = derivation {
    name = "hello-nix";
    system = builtins.currentSystem;
    builder = "/bin/bash";
  };
in simpleDerivation

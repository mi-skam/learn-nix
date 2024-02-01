let
  simpleDerivation = derivation {
    name = "hello-nix";
    system = builtins.currentSystem;
    builder = "my-builder";
  };
in simpleDerivation

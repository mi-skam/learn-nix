{ 
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };
  
  outputs = { self, nixpkgs }:
    let pkgs = nixpkgs.legacyPackages.aarch64-darwin;
    in {
    packages.aarch64-darwin.hello = pkgs.hello;

    devShells.aarch64-darwin.default =
      pkgs.mkShell { buildInputs = with pkgs; [ self.packages.aarch64-darwin.hello cowsay ]; }; 

  };
}

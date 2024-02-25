{ 
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };
  
  outputs = { self, nixpkgs }: {
    pkgs = nixpkgs.legacyPackages.aarch64-darwin;

    packages.aarch64-darwin.hello = pkgs.hello;

    devshell.aarch64-darwin =
      pkgs.mkshell { buildinputs = [ self.packages.aarch64-darwin.hello pkgs.cowsay ]; }; 

  };
}

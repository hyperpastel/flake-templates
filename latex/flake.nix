{
  description = "";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:

    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        tex-pkgs = (
          pkgs.texlive.combine {
            inherit (pkgs.texlive)
              scheme-basic
              latexmk
              amsmath
              babel
              german
              parskip
              ;
          }
        );
      in
      with pkgs;
      {
        devShells.default = mkShell {
          buildInputs = [
            tex-pkgs
            texlab
          ];
        };
      }
    );
}

{
  description = "FPGA dev shell";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  
  outputs = {self, nixpkgs}:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default =
      pkgs.mkShell
        {
          buildInputs = [
            pkgs.ghdl
            pkgs.gtkwave
            pkgs.fusesoc
            pkgs.ghdl
            pkgs.quartus-prime-lite
            pkgs.gtkwave
          ];
        };
  };
}
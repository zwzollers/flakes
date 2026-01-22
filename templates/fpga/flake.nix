{
  description = "FPGA dev shell";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
  
  outputs = {self, nixpkgs}:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { system = "x86_64-linux"; config.allowUnfree = true; };
    syspkgs = import <nixpkgs> {};
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
            syspkgs.quartus-prime-lite
            pkgs.gtkwave
          ];
        };
  };
}
{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {
      vhdl = {
        path = ./templates/fpga;
        description = "a simple vhdl enviroment";
      };
    };
  };
}
{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {
      vhdl = {
        path = ./templates/vhdl;
        description = "a simple vhdl enviroment";
      };
    };
  };
}
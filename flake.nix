{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {

      python-script = {
        path = ./templates/python-script;
        description = "A simple Python program script.";
      };

      defaultTemplate = self.templates.trivial;
    };
  };
}
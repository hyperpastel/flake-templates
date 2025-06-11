{
  description = "hyperpastel's flake templates";

  outputs =
    { self }:
    {
      templates = {
        java = {
          path = ./java;
          description = "Template for Java projects";
        };
        rust = {
          path = ./rust;
          description = "Template for Rust projects";
        };
        template = {
          path = ./template;
          description = "Template for writing flake templates";
        };
      };

    };
}

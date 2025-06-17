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

        c3 = {
          path = ./c3;
          description = "Template for C3 projects";
        };

        rust = {
          path = ./rust;
          description = "Template for Rust projects";
        };

        template = {
          path = ./template;
          description = "Template for writing flake templates";
        };

        latex = {
          path = ./latex;
          description = "Template for writing documents with LaTeX";
        };
      };

    };
}

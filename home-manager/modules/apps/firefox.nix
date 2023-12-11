{ config, pkgs, ... }: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        name = "default";
        id = 0;
        isDefault = true;
        search = {
          default = "brave.com";
          order = [ ];
        };
      };
    };
  };
}

{ config, pkgs, ... }:

{
  programs.fish = {
    enable=true;
    shellInit=''
    set fish_greeting '''
  '';
  plugins = [
    { name = "autopair"; src = pkgs.fishPlugins.autopair.src; }
  ];
    shellAbbrs = {
      
    };
  };

}
# install plugins and define abbr/alias
{ config, pkgs, ... }:

{
  programs.fish = {
    enable=true;
    shellInit=''
    set fish_greeting '''
  '';
    shellAbbrs = {
      
    };
  };

}
# install plugins and define abbr/alias
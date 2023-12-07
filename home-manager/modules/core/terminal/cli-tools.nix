{ config, pkgs, ... }:

{
  programs.bat = {
    enable = true;
    # config = { theme = "TwoDark"; };
  };
  programs.ripgrep = { enable = true; };
  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableFishIntegration = true;
    enableZshIntegration = true;
  };
  programs.eza = { enable = true; };
  programs.fzf = { enable = true; };
  programs.bottom = { enable = true; };

  home.packages = with pkgs; [ du-dust fd felix-fm lfs rm-improved ];
}

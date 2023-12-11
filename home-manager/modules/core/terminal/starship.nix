{ config, pkgs, ... }:

{

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    enableBashIntegration = true;
    settings = {      
      add_newline = false;
      
      format =
        "$shell$username$hostname$nix_shell$git_branch$git_commit$git_state$git_status$directory$jobs$cmd_duration$character";
      
      directory = {        
        truncation_length = 3;
      };

      # shlvl = {
      #   disabled = false;
      #   style = "bright-red";
      # };

      character = {
        error_symbol = "[➜](bold bright red)";
        success_symbol = "[➜](bold bright green)";
      };

      shell = {
        disabled = false;
        format = "$indicator";
        fish_indicator = "[FSH](blue) ";
        bash_indicator = "[BSH](bright-white) ";
        # zsh_indicator = "[ZSH](bright-white) ";
      };

      username = {
        style_user = "bright-white bold";
        style_root = "bright-red bold";
      };

      hostname = {
        style = "bright-green bold";
        ssh_only = true;
      };

      python = {
        symbol = "🐍 ";
        format = "[$symbol$pyenv_prefix($version] )(\($virtualenv\) )]($style) ";
        style = "yellow bold";
      };      

      nix_shell = {
        symbol = "❄️ ";
        format = "[$symbol$name]($style) ";
        style = "bright-purple bold";
      };

      git_branch = {
        only_attached = true;
        format = "[$symbol$branch]($style) ";
        symbol = "שׂ";
        style = "bright-yellow bold";
      };
      git_commit = {
        only_detached = true;
        format = "[ﰖ$hash]($style) ";
        style = "bright-yellow bold";
      };
      git_state = { style = "bright-purple bold"; };
      git_status = { style = "bright-green bold"; };

      cmd_duration = {
        format = "[$duration]($style) ";
        style = "bright-blue";
      };

      gcloud.disabled = true;
    };
  };
}

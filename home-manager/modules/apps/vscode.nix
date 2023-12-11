{ config, pkgs, ... }: {

  # VS Code on Wayland has issues, make sure to set the title bar to custom
  # https://github.com/microsoft/vscode/issues/181533
  programs.vscode = {
    enable = true;
    enableUpdateCheck = true;
    enableExtensionUpdateCheck = true;
    extensions = with pkgs.vscode-extensions; [
      golang.go
      ms-python.python
      bbenoist.nix
      brettm12345.nixfmt-vscode
    ];
    userSettings = {
      "window.titleBarStyle" = "custom";
      "editor.fontFamily" =
        "'M+1Code Nerd Font','Droid Sans Mono', 'monospace', monospace";
    };
  };

}

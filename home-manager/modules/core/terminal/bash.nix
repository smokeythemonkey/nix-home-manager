{ config, pkgs, ... }: {

  programs.bash = {
    enable = true;
    shellAliases = {
      cp = "cp -ia";
      ls = "ls -la";
      mv = "mv -i";

      n = "nvim";

      nf = "nix flake";
      nfu = "nix flake update";
      nd = "nix develop";
      nb = "nix build";
      ns = "nix shell";
      nr = "nix run";
      ncg = "sudo nix-collect-garbage -d";
      # sw = "sudo nixos-rebuild switch --flake .";
      # vm =
      #   "nixos-rebuild build-vm --flake . && ./result/bin/run-nixos-vm && trash put result nixos.qcow2";

      ci = "cargo init";
      cin = "cargo info";
      cu = "cargo update";
      ca = "cargo add";
      cab = "cargo add --build";
      cad = "cargo add --dev";
      cb = "cargo build";
      cr = "cargo run";
      cs = "cargo search";
      ct = "cargo tree --depth 1";
      cn = "cargo new";
      crm = "cargo remove";
      crmb = "cargo remove --build";
      crmd = "cargo remove --dev";
      cc = "cargo clippy";
      cf = "cargo fmt";

    };
  };

}

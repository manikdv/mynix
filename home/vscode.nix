{ pkgs, lib, ... }: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
      matklad.rust-analyzer 
      vscodevim.vim
      justusadam.language-haskell
      haskell.haskell
      jakebecker.elixir-ls

    ];
    userSettings = {
      editor.fontFamily = "Hack Nerd Font";
      editor.fontSize = 14;
      telemetry.enableTelemetry = false;
      workbench.colorTheme = "Tokyo Night";
      workbench.iconTheme = "vscode-icons";
    };
  };
}

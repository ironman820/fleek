{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.tela-icon-theme;
      name = "Tela-black-dark";
    };
    theme = {
      package = pkgs.orchis-theme;
      name = "Orchis-Dark-Compact";
    };
  };
  home.sessionVariables = {
    EDITOR = "vim";
  };
  programs.bash.initExtra = "EDITOR=vim";
  programs.vim.defaultEditor = true;
  services.syncthing = {
    enable = true;
    tray = true;
  };
}

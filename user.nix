{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.tela-icon-theme;
      name = "Tela-black-dark";
    };
  };
  home.sessionVariables = {
    EDITOR = "vim";
  };
  programs.bash.initExtra = "EDITOR=vim";
  programs.vim.defaultEditor = true;
}

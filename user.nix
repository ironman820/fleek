{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  home.sessionVariables = {
    EDITOR = "vim";
  };
  programs.vim.defaultEditor = true;
}

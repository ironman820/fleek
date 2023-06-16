{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  home.sessionVariables = {
    EDITOR = "vim";
  };
  programs.bash.initExtra = "EDITOR=vim";
  programs.vim.defaultEditor = true;
}

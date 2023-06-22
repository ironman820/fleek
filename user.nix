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
  programs.bash.initExtra = ''
    EDITOR=vim
    gpg-connect-agent /bye
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
  '';
  programs.vim.defaultEditor = true;
  services.syncthing = {
    enable = true;
    tray.enable = true;
  };
  systemd.user.targets.tray = {
    Unit = {
      Description = "Home Manager System Tray";
      Requires = [ "graphical-session-pre.target" ];
    };
  };
}

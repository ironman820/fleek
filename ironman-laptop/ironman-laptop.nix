{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    home.username = "ironman";
    home.homeDirectory = "/home/ironman";
    programs.git = {
        enable = true;
        aliases = {
            pushall = "!git remote | xargs -L1 git push --all";
            graph = "log --decorate --oneline --graph";
            add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
        };
        userName = "Nicholas Eastman";
        userEmail = "29488820+ironman820@users.noreply.github.com";
        extraConfig = {
            feature.manyFiles = true;
            init.defaultBranch = "main";
            gpg.format = "ssh";
        };

        signing = {
            key = "~/.ssh/github_home";
            signByDefault = builtins.stringLength "~/.ssh/github_home" > 0;
        };

        lfs.enable = true;
        ignores = [ ".direnv" "result" ];
  };
}

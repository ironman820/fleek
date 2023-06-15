{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    "ca" = "chezmoi add";
    
    "cc" = "chezmoi cd";
    
    "ce" = "chezmoi edit --apply";
    
    "cf" = "chezmoi forget";
    
    "ci" = "chezmoi init";
    
    "cr" = "chezmoi re-add";
    
    "cu" = "chezmoi update";
    
    "df" = "duf";
    
    "ducks" = "du -chs * 2>/dev/null | sort -rh | head -11";
    
    "fleeks" = "cd ~/.local/share/fleek";
    
    "htop" = "glances";
    
    "pdi" = "podman images";
    
    "pdo" = "podman images | awk '{print \$3,\$2}' | grep '<none>' | awk '{print \$1}' | xargs -t podman rmi";
    
    "pdr" = "podman rmi";
    
    # bat --plain for unformatted cat
    catp = "bat -P";
    
    # replace cat with bat
    cat = "bat";
    };
}

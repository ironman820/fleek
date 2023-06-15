{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  programs.bash = {
    # sessionVariables = {
    #   EDITOR = "vim";
    # };
    shellAliases = {
      ca="chezmoi add";
      ce="chezmoi edit --apply";
      cu="chezmoi update";
      cc="chezmoi cd";
      cf="chezmoi forget";
      ci="chezmoi init";
      cr="chezmoi re-add";
      df = "duf";
      ducks = "du -chs * 2>/dev/null | sort -rh | head -11";
      htop = "glances";
      pdo="podman images | awk '{print \$3,\$2}' | grep '<none>' | awk '{print \$1}' | xargs -t podman rmi ";
      pdi="podman images";
      pdr="podman rmi";
    };
  };
 
}

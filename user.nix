{ pkgs, misc, ... }: {
  # FEEL FREE TO EDIT: This file is NOT managed by fleek. 
  programs.bash.shellAliases = {
    ducks = "du -chs * 2>/dev/null | sort -rh | head -11"
  }
 
}

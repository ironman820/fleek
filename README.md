# Fleek Configuration

nix home-manager configs created by [fleek](https://github.com/ublue-os/fleek).

## Reference

- [home-manager](https://nix-community.github.io/home-manager/)
- [home-manager options](https://nix-community.github.io/home-manager/options.html)

## Usage

Aliases were added to the config to make it easier to use. To use them, run the following commands:

```bash
# To change into the fleek generated home-manager directory
$ fleeks
# To apply the configuration
$ apply-$(hostname)
```

Your actual aliases are listed below:
    ca = "chezmoi add";

    cc = "chezmoi cd";

    ce = "chezmoi edit --apply";

    cf = "chezmoi forget";

    ci = "chezmoi init";

    cr = "chezmoi re-add";

    cu = "chezmoi update";

    df = "duf";

    ducks = "du -chs * 2>/dev/null | sort -rh | head -11";

    fleeks = "cd ~/.local/share/fleek";

    htop = "btop";

    nano = "vim";

    pdi = "podman images";

    pdo = "podman images | awk '{print \$3,\$2}' | grep '<none>' | awk '{print \$1}' | xargs -t podman rmi";

    pdr = "podman rmi";

    vim = "nvim";

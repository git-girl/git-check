# Git Check ZSH Plugin 

**Adds a zsh hook to check if the origin of the current branch has changes to local in the background and sends a notification** 

![Gif showing the behavior](/assets/git-check.gif)

## Installing

1. Clone this repository somewhere on your machine. This guide will assume ~/.zsh/git-check.
    ```bash
    git clone https://github.com/git-girl/git-check ~/.zsh/git-check
    ```
2. Add the following to your .zshrc:
    ```bash
   source ~/.zsh/git-check/git-check.plugin.zsh
    ```
3. Start a new terminal session.

### oh-my-zsh
```bash
git clone https://github.com/git-girl/git-check ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-check
```

1. Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)
   ```bash
   git clone https://github.com/git-girl/git-check ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/git-check
   ```
2. Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
    ```
    plugins=( 
        # other plugins...
        pseudo-projectile
    )
    ```
3. Start a new terminal session.

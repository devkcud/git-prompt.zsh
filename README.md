# git-prompt.zsh

To use it _source_ into your `.zshrc` file.

For example:

```bash
source $ZDOTDIR/plugins/git-prompt.zsh/git-prompt.zsh
```

## Cloning

> This sections is just for convenience sake. Just copy a command and paste it into your terminal.

### Git (SSH)

```bash
git clone git@github.com:devkcud/git-prompt.zsh.git ${ZDOTDIR:-$HOME/.zsh}/git-prompt.zsh
```

### Git (HTTPS)

```bash
git clone https://github.com/devkcud/git-prompt.zsh.git ${ZDOTDIR:-$HOME/.zsh}/git-prompt.zsh
```

### GitHub CLI

```bash
gh repo clone devkcud/git-prompt.zsh ${ZDOTDIR:-$HOME/.zsh}/git-prompt.zsh
```

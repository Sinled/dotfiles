# Sinled  dotfiles

Based on [mathiasbynens dotfiles](https://github.com/mathiasbynens/dotfiles)!

![Screenshot of my shell prompt](http://i.imgur.com/EkEtphC.png)

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/Sinled/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```


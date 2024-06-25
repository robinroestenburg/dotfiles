# .dotfiles

This repository contains my ZSH, Git and Vim settings.

## Installation

### Pre-requisites

You must have the following installed:

* [iTerm2](https://www.iterm2.com)
* [Homebrew](https://brew.sh)

### Code

To install the dotfiles:

```zsh
git clone https://github.com/robinroestenburg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/install
```

### Homebrew

To install all Homebrew tools listed in `Brewfile`:

```zsh
brew bundle
```

### asdf

[asdf](https://asdf-vm.com/) is used to manage runtimes. Example usage:

Install Ruby globally:

```zsh
asdf plugin add ruby
asdf install ruby 3.2.4
asdf global ruby 3.2.4
```

Install Node locally:

```zsh
asdf plugin add nodejs
asdf install nodejs 20.11.1
```

To update all plugins, when new versions come out:

```zsh
asdf plugin update --all
```

### Configuration

#### Git

Add and change these lines to ~/.dotfiles/config/personal.sh:

``` sh
export GIT_AUTHOR_NAME     = "Your Name"
export GIT_AUTHOR_EMAIL    = "yourname@yourdomain.com"
export GIT_COMMITTER_NAME  = $GIT_AUTHOR_NAME
export GIT_COMMITTER_EMAIL = $GIT_AUTHOR_EMAIL
```

#### Custom

You can put configuration options that are specific to your environment,
like custom paths, and other environment variables in the following file:

```
config/personal.zsh
```

## Credits

My dotfiles are based on Iain Hecker's setup, which you can find [here](http://github.com/iain/dotfiles).
Other than that I've grabbed things from a bunch of different people and sources. 

Feel free to use anything for your own dotfiles setup!

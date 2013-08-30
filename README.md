# .dotfiles

This repository contains my ZSH, Git and Vim settings.

## Usage

### Prerequisites

You must have the following installed:

* Xcode (including Command Line Tools)
* iTerm2
* Homebrew

### Installation

To install the dotfiles:

```
git clone https://github.com/robinroestenburg/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./script/install
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

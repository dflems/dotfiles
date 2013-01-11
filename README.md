## dflems' dotfiles
Mostly based on [holman's](http://github.com/holman) topically-organized dotfiles. They're using his bootstrapping Rakefile, but I may change that out in the future for something with little or no dependencies. There's a bunch of stuff in here that's specific to my setup (my `.gitconfig` for instance). Right now, this setup is tailored for OSX. Right now, my ZSH config and prompt relies on having [rbenv](https://github.com/sstephenson/rbenv) installed and initialized. That too may change.

## what's it gonna do?
* Install [Homebrew](http://mxcl.github.com/homebrew) and dependencies ([grc](http://korpus.juls.savba.sk/~garabik/software/grc.html), [coreutils](http://www.gnu.org/software/coreutils)).
* Symlink each `FILENAME.symlink` to `~/.FILENAME`.
* Every `*.zsh` file will get sourced.
* Autocompletion loaded from `completion.zsh` files in topic folders.
* Source `~/.localrc` for super secret stuff that you don't want to put on the internets.
* Aliases `git` to `hub` for easier Github integration.

## install it
```sh
git clone https://github.com/dflems/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## .dotfiles of interest
* [dotfiles.github.com](http://dotfiles.github.com): Growing list of resources (follow [@octodots](http://www.twitter.com/octodots))
* [holman/dotfiles](http://github.com/holman/dotfiles): Bootstrapping, topicality, ZSH config, vim config
* [rtomayko/dotfiles](https://github.com/rtomayko/dotfiles): Some scripts (and symlinking `bitch,` to `sudo`. Genius.)
* [garybernhardt/dotfiles](https://github.com/garybernhardt/dotfiles): Git scripts and gitconfig. Great stuff. A+ would recommend.

## todo
* Sublime Text 2 settings
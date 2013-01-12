## dflems' dotfiles
Mostly based on [holman's](http://github.com/holman) topically-organized dotfiles. They're using his bootstrapping Rakefile, but I may change that out in the future for something with little or no dependencies. There's some stuff in here that's specific to my setup (my `.gitconfig` for instance), so watch out.

## prerequisites (osx only at the moment)
* [XCode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) and [Command Line Tools](http://stackoverflow.com/questions/9329243#answer-9329325)
* [Homebrew](http://mxcl.github.com/homebrew)
* [rbenv](https://github.com/sstephenson/rbenv#installation) is optional, but recommended `brew install rbenv ruby-build`

## what's this gonna do?
* Install some Homebrew dependencies ([grc](http://korpus.juls.savba.sk/~garabik/software/grc.html), [coreutils](http://www.gnu.org/software/coreutils)).
* Symlink each `FILENAME.symlink` to `~/.FILENAME`.
* Every `*.zsh` file will get sourced.
* Autocompletion loaded from `completion.zsh` files in topic folders.
* Use `~/.localrc` for super secret stuff that you don't want to put on the internets.
* Aliases `git` to `hub` for easier Github integration.

## install it
```sh
git clone https://github.com/dflems/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

## .dotfiles of interest
* [dotfiles.github.com](http://dotfiles.github.com): Growing list of resources (follow [@octodots](http://www.twitter.com/octodots) for the latest-and-greatest)
* [holman/dotfiles](http://github.com/holman/dotfiles): Bootstrapping, topicality, ZSH config, vim config
* [rtomayko/dotfiles](https://github.com/rtomayko/dotfiles): Some scripts (and symlinking `bitch,` to `sudo`. Genius.)
* [garybernhardt/dotfiles](https://github.com/garybernhardt/dotfiles): Git scripts and gitconfig. Great stuff. A+ would recommend.

## todo
* Script for installing common homebrew recipes
* Clean up

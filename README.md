## dflems' dotfiles
Mostly based on [holman's](http://github.com/holman) topically-organized dotfiles. There's some stuff in here that's specific to my setup (my `.gitconfig` for instance), so watch out.

### prerequisites
* [XCode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) or Command Line Tools

### so, how does this work?
* Installs some Homebrew dependencies and neat extensions.
* Symlinks each `FILENAME.symlink` to `~/.FILENAME`.
* Every `*.zsh` file gets sourced.
* Autocompletion loaded from `completion.zsh` files in topic folders.
* Aliases `git` to `hub` for easier Github integration.
* Uses `~/.localrc` for super secret stuff that you don't want to put on the internets.

### install it
```sh
git clone https://github.com/dflems/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

### .dotfiles of interest
* [dotfiles.github.io](http://dotfiles.github.io) & [@octodots](http://www.twitter.com/octodots)
* [holman/dotfiles](http://github.com/holman/dotfiles): Bootstrapping, topicality, ZSH config
* [garybernhardt/dotfiles](https://github.com/garybernhardt/dotfiles): Git hotness
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles): macOS goodness
* [skwp/dotfiles](https://github.com/skwp/dotfiles): Clean


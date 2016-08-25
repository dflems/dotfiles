## dflems' dotfiles
Mostly based on [holman's](http://github.com/holman) topically-organized dotfiles. They're using his bootstrapping Rakefile, but I may change that out in the future for something with little or no dependencies. There's some stuff in here that's specific to my setup (my `.gitconfig` for instance), so watch out.

### prerequisites
* [XCode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)
* [Homebrew](http://brew.sh) package manager

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
* [dotfiles.github.com](http://dotfiles.github.com): Growing list of resources (follow [@octodots](http://www.twitter.com/octodots) for the latest-and-greatest)
* [holman/dotfiles](http://github.com/holman/dotfiles): Bootstrapping, topicality, ZSH config
* [garybernhardt/dotfiles](https://github.com/garybernhardt/dotfiles): Git hotness
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles): macOS goodness
* [skwp/dotfiles](https://github.com/skwp/dotfiles): Clean


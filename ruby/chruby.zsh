if [ -f /opt/homebrew/share/chruby/chruby.sh ]; then
  source /opt/homebrew/share/chruby/chruby.sh
  source /opt/homebrew/share/chruby/auto.sh
  chruby_auto
elif [ -f /usr/local/share/chruby/chruby.sh ]; then
  source /usr/local/share/chruby/chruby.sh
  source /usr/local/share/chruby/auto.sh
  chruby_auto
fi

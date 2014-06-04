# # source ~/.bash_profile
#
# ruby_check=$(rbenv versions | grep $BELOVED_RUBY_VERSION)
#
# if [[ "$ruby_check" == *$BELOVED_RUBY_VERSION* ]]; then
#   echo "$BELOVED_RUBY_VERSION is installed"
# else
#   rbenv install $BELOVED_RUBY_VERSION
# fi
#
# # Set global Ruby
# rbenv global $BELOVED_RUBY_VERSION
#
# # Reload
# # source ~/.bash_profile
#
# # Reload
# rbenv rehash

# Add to path
# export PATH="$HOME/.rbenv/bin:$PATH"
# # enable shims and autocompletion
# eval "$(rbenv init -)"

ruby_check=$(rbenv versions | grep $BELOVED_RUBY_VERSION)

if [[ "$ruby_check" == *$BELOVED_RUBY_VERSION* ]]; then
  echo "$BELOVED_RUBY_VERSION is installed"
else
  rbenv install $BELOVED_RUBY_VERSION
fi

# Set global Ruby
rbenv global $BELOVED_RUBY_VERSION

# Reload
rbenv rehash

# PUT BELOW, BC WHY MUST BE ABOVE?
# add to default bashrc for the moment
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

echo "RUBY BEFORE SOURCE: `which ruby`"
source ~/.bashrc
echo "RUBY AFTER SOURCE: `which ruby`"

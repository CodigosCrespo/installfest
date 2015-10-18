#-------------------------------------------------------------------------------
# Use Brew to install a final set of tools (mac/homebrew_install_extra_tools.sh)
#-------------------------------------------------------------------------------

inform "Installing extra libraries via Homebrew..." true

# Useful packages
packagelist=(
  # ASCII ART!!!!
  figlet

  # visualization tool for ERDs
  graphviz

  # image resizing
  imagemagick

  # PhantomJS is a headless WebKit scriptable with a JavaScript API.
  phantomjs

  # WebKit implementation of qt for Capybara testing
  qt

  # qt for mavericks
  qt4

  # Advanced in-memory key-value store that persists on disk
  redis

  # essential UNIX commands
  # TODO (phlco) ensure they're aliased in the path correctly
  coreutils

  # a self-contained, serverless, zero-configuration, transactional SQL database
  # engine.
  sqlite
)

brew install ${packagelist[@]}

# List of useful Quick Look plugins for developers
# NOTE (phlco) necessary?
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package

show "Complete!"

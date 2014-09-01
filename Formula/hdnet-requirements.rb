require "formula"

class HdnetRequirements < Formula
  url 'https://raw.githubusercontent.com/HDNET/homebrew-hdnet/master/README.md'
  sha1 'b2c0580594c85a24c4fead865d9404566d05cd32'
  homepage 'http://www.hdnet.de/'
  version '0.0.1'

  depends_on "hdflow"
  depends_on "wget"
  depends_on "homebrew/php/php55"
  depends_on "homebrew/php/php55-xdebug"
  depends_on "homebrew/php/php55-mcrypt"
  depends_on "git"
  depends_on "mysql"
  depends_on "bash-completion"
  depends_on "npm"
  depends_on "composer"
  depends_on "homebrew/php/php55-memcached"
  depends_on "homebrew/php/php55-oauth"
  depends_on "caskroom/cask/brew-cask"
  
  def caveats
    "
    Programme via cask installieren.
    brew cask install iterm2
    brew cask install textwrangler
    brew cask install google-chrome
    brew cask install sourcetree
    brew cask install phpstorm
    brew cask install adium
    brew cask install vagrant
    brew cask install virtualbox
    brew cask install sequel-pro
    brew cask install tunnelblick
    "
  end

  def install
    system "/usr/local/bin/npm install -g less uglifycss uglify-js"
    system "open http://lol.ressourcenkonflikt.de/applaus.gif"
  end
end

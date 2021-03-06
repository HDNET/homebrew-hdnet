require "formula"

class HdnetRequirements < Formula
  url 'https://raw.githubusercontent.com/HDNET/homebrew-hdnet/master/README.md'
  sha256 '8f475a4e0c727ca2b7109708e80edf9724033ee5'
  homepage 'http://www.hdnet.de/'
  version '0.0.3'

  depends_on "hdflow"
  depends_on "wget"
  depends_on "homebrew/php/php56"
  depends_on "homebrew/php/php56-xdebug"
  depends_on "homebrew/php/php56-mcrypt"
  depends_on "git"
  depends_on "mysql"
  depends_on "bash-completion"
  depends_on "node"
  depends_on "composer"
  depends_on "shell-essentials"
  depends_on "homebrew/php/php56-memcached"
  depends_on "homebrew/php/php56-oauth"
  depends_on "hdnet-coding-standards"
 
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
    system "/usr/local/bin/npm install -g less@1.7.5 uglifycss uglify-js"
    system "open http://lol.ressourcenkonflikt.de/applaus.gif"
  end
end

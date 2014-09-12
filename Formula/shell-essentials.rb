require "formula"

class ShellEssentials < Formula
  homepage 'http://www.hdnet.de/'
  url 'https://github.com/HDNET/shell-essentials/archive/master.zip'
  version '1.0'
  sha1 '89e35b9bbc77b2ed61ad1221b5781e91f28ae491'

  depends_on "bash-completion"

  def caveats; <<-EOS.undent
    Add the following lines to your ~/.bash_profile:
      if [ -f $(brew --prefix)/etc/bash/hdnet-shell-essentials.sh ]; then
        . $(brew --prefix)/etc/bash/hdnet-shell-essentials.sh
      fi
    EOS
  end

  def install
    (prefix/"etc/bash").install "hdnet-shell-essentials.sh"
    (prefix/"etc/bash").install "hdnet-inputrc"
  end
end

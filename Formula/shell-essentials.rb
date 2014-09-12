require "formula"

class ShellEssentials < Formula
  homepage 'http://www.hdnet.de/'
  url 'https://github.com/HDNET/shell-essentials.git'

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
    (prefix/"etc/bash").install "hdnet-prompt"
  end
end

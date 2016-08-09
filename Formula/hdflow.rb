require "formula"

class Hdflow < Formula
  homepage 'http://www.hdnet.de/'
  url 'http://hdflow.hdnet.de/hdflow-1.1.2.tar'
  sha256 'c836de5c8af8d60c2974ea761a8343ebe27e276c031d40ce9403a6c31aa34b77'

  depends_on "bash-completion"

  def install
    (prefix).install "bin/"
    (bash_completion).install "etc/bash_completion.d/git-flow-completion.bash"
  end
end

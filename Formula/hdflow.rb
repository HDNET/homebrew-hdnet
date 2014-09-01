require "formula"

class Hdflow < Formula
  homepage 'http://www.hdnet.de/'
  url 'http://hdflow.hdnet.de/hdflow-1.1.2.tar'
  sha1 '03c74c9bcd36c984c70672113056f37346564219'

  depends_on "bash-completion"

  def install
    (prefix).install "bin/"
    (bash_completion).install "etc/bash_completion.d/git-flow-completion.bash"
  end
end

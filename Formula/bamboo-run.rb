require "formula"

class BambooRun < Formula
  homepage 'https://github.com/HDNET/bamboo-run'
  url 'https://github.com/HDNET/bamboo-run.git'
  version '2'

  depends_on "bash-completion"
  depends_on "bamboo-cli"

  def install
    (bin).install "bamboo-run"
    (bash_completion).install "bash_completion" => "bamboo-run"
  end
end

class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.tar.gz"
  sha256 "6d5945bd21e1a7d5f6bc523a1a0d1a16fcf2aa89c64b130e54cc5361a76dc8bd"

  depends_on "symfony2-coding-standard"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def install
    prefix.install "HDNET-Black"
    (etc+"php-code-sniffer"+"Standards").install_symlink prefix+"HDNET-Black"
  end
end

class Symfony2CodingStandard < Formula
  homepage "https://github.com/escapestudios/Symfony2-coding-standard"
  url "https://github.com/escapestudios/Symfony2-coding-standard/archive/2.4.0.tar.gz"
  sha256 "4dbbce93afe3c7aca65a0b2f5ff24fb4863fd506e731155c0961ca97a708b9fb"

  depends_on "php-code-sniffer"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def install
    prefix.install "Symfony2"
    (etc+"php-code-sniffer"+"Standards").install_symlink prefix+"Symfony2"
  end
end

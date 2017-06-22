class Symfony2CodingStandard < Formula
  homepage "https://github.com/escapestudios/Symfony2-coding-standard"
  url "https://github.com/escapestudios/Symfony2-coding-standard/archive/2.11.0.tar.gz"
  sha256 "70e828d886b89c7ecdd3911379fea1b5ffdbf5fdf1a1aa12d58d854338fc2dbd"

  depends_on "php-code-sniffer@2.9"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def install
    prefix.install "Symfony2"

    FileUtils.rm (etc+"php-code-sniffer"+"Standards")+"Symfony2", :force => true
    (etc+"php-code-sniffer"+"Standards").install_symlink prefix+"Symfony2"
  end
end

class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.1.tar.gz"
  sha256 "e9f49b2be1b53ddbca63417200b948885b865283957d4c3cd8ba5b7d92c78570"

  depends_on "symfony2-coding-standard"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def caveats
  "
Für Team-Black:
phpcs --config-set default_standard HDNET-Black
git config --global template "+prefix+"/git-templates/template-black
  "
  end

  def install
    prefix.install "HDNET-Black"
    prefix.install "git-templates"
    (etc+"php-code-sniffer"+"Standards").install_symlink prefix+"HDNET-Black"
  end
end

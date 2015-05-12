class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.2.tar.gz"
  sha256 "7003ef09140256f353f090ce58d9f0e855cd2a0a99df85f283128685078d7bbd"
  depends_on "symfony2-coding-standard"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def phpcs_standards
    etc+"php-code-sniffer"+"Standards"
  end

  def caveats
  "
Für Team-Black:
phpcs --config-set default_standard HDNET-Black
git config --global int.templatedir "+prefix+"/git-templates/template-black
  "
  end

  def install
    prefix.install "HDNET-Black"
    prefix.install "git-templates"
    if File.symlink? (phpcs_standards+"HDNET-Black")
      File.delete (phpcs_standards+"HDNET-Black")
    end
    phpcs_standards.install_symlink prefix+"HDNET-Black"
  end
end

class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.3.tar.gz"
  sha256 "4728668c02d432dfa32b5d3c1785cd68892ab0a149040727f45d7c2024af985b"
  depends_on "symfony2-coding-standard"

  keg_only "Wir brauchen nur eine Verlinkung in etc"

  def phpcs_standards
    etc+"php-code-sniffer"+"Standards"
  end

  def caveats
  "
Für Team-Black:
phpcs --config-set default_standard HDNETBlack
git config --global int.templatedir "+prefix+"/git-templates/template-black
  "
  end

  def install
    prefix.install "HDNETBlack"
    prefix.install "git-templates"
    if File.symlink? (phpcs_standards+"HDNETBlack")
      File.delete (phpcs_standards+"HDNETBlack")
    end
    phpcs_standards.install_symlink prefix+"HDNETBlack"
  end
end

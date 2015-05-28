class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.5.tar.gz"
  sha256 "16bd7e8ae7e1c88400741aef49180524d062431b67629fd94fb81ff7e0e7ed7e"

  depends_on "php-code-sniffer"
  depends_on "php-cs-fixer"
  depends_on "phpmd"
  depends_on "symfony2-coding-standard"

  def phpcs_standards
    etc+"php-code-sniffer"+"Standards"
  end

  def caveats
    "
phpcs --config-set default_standard HDNETBlack
  "
  end

  def install
    prefix.install "HDNETBlack"
    if File.symlink? (phpcs_standards+"HDNETBlack")
      File.delete (phpcs_standards+"HDNETBlack")
    end
    phpcs_standards.install_symlink prefix+"HDNETBlack"
  end

  test do
    system "pre-commit", "--version"
    system "ls", phpcs_standards+"HDNETBlack/ruleset.xml"
  end
end

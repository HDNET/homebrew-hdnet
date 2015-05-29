class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.6.tar.gz"
  sha256 "186e08d00e6a41b3c2f3ed6bb54b4d399838879ec42cffcc3cc6b6a2a01020e1"

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

class HdnetCodingStandards < Formula
  homepage "https://www.hdnet.de"
  url "https://github.com/HDNET/coding-standards/archive/0.1.4.tar.gz"
  sha256 "84c7ddd2ffff9e51097be5726840f61ca562fbcceeac778e25d96c4a8e86f685"

  depends_on "php-code-sniffer"
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
    share.install "git-templates"
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

class SymfonyInstaller < Formula
  homepage "http://symfony.com/"
  url "http://get.sensiolabs.org/symfony.phar"
  version "1"
  sha256 "d209995a19452c116870d88a94a71dede8c541ad27402cab5c7ff01bc8a5d4de"

  def install
    (bin).install "symfony.phar" => "symfony"
  end
end

require "formula"

class Symfony-Installer < Formula
  homepage 'http://symfony.com/'
  url 'https://github.com/symfony/symfony-installer'

  def install
    (bin).install "symfony" => "symfony"
  end
end

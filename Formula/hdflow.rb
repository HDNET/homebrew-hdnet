require "formula"

class Hdflow < Formula
  homepage 'http://www.hdnet.de/'
  url 'http://hdflow.hdnet.de/hdflow-0.8.tar'
  sha1 '03c74c9bcd36c984c70672113056f37346564219'
  version '0.8'

  depends_on "bash-completion" => :build

  def install
    system "cp -a * #{prefix}"
  end
end

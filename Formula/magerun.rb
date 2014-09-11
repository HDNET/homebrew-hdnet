require "formula"

class Magerun < Formula
  homepage 'http://magerun.net/'
  url 'https://github.com/netz98/n98-magerun/archive/1.91.0.zip'
  sha1 '987a5ec57807945463558479ff475fc294312c1a'

  depends_on "bash-completion"

  def install
    (bin).install "n98-magerun.phar" => "magerun"
    (bash_completion).install "autocompletion/bash/bash_complete" => "n98-magerun.bash"
  end
end

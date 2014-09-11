require "formula"

class Magerun < Formula
  homepage 'http://magerun.net/'
  url 'https://github.com/netz98/n98-magerun/archive/1.91.0.zip'
  sha1 '987a5ec57807945463558479ff475fc294312c1a'

  depends_on "bash-completion"

  patch do
    url "https://gist.githubusercontent.com/jeboehm/2916d673260a5f6e6b5f/raw/46db8c5565dd7d13b30042018206fd2fd800f705/bash_complete.patch"
    sha1 "622d3ac24e24f160399c56d2107563ada3fe1efb"
  end

  def install
    (bin).install "n98-magerun.phar" => "magerun"
    (bash_completion).install "autocompletion/bash/bash_complete" => "n98-magerun.bash"
  end
end

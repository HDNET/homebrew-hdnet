require "formula"

class BambooCli < Formula
  homepage 'https://marketplace.atlassian.com/plugins/org.swift.bamboo.cli'
  url 'https://marketplace.atlassian.com/download/plugins/org.swift.bamboo.cli/version/390'
  sha1 'd6bf11fb05f510ca4cc91490d875e1ac52238a4b'

  patch :DATA
  
  def caveats
    "In ~/.bash_profile die Variablen BAMBOO_CLI_SERVER, BAMBOO_CLI_USER und BAMBOO_CLI_PASSWORD füllen."
  end
  
  def install
    (bin).install "bamboo.sh" => "bamboo"
    (prefix).install "lib"
  end
end

__END__
diff --git a/bamboo.sh b/bamboo.sh
index 5c69d14..572f745 100755
--- a/bamboo.sh
+++ b/bamboo.sh
@@ -4,4 +4,11 @@
 # - Customize for your installation, for instance you might want to add default parameters like the following:
 # java -jar `dirname $0`/lib/bamboo-cli-3.9.0.jar --server http://my-server --user automation --password automation "$@"
 
-java -jar `dirname $0`/lib/bamboo-cli-3.9.0.jar "$@"
+if [ "${BAMBOO_CLI_USER}" == "" ] || [ "${BAMBOO_CLI_PASSWORD}" == "" ] || [ "${BAMBOO_CLI_SERVER}" == "" ]
+then
+	echo "CLI nicht konfiguriert!"
+	/usr/local/bin/brew info bamboo-cli
+	exit 1
+fi
+
+java -jar `/usr/local/bin/brew --prefix bamboo-cli`/lib/bamboo-cli-3.9.0.jar --server ${BAMBOO_CLI_SERVER} --user ${BAMBOO_CLI_USER} --password ${BAMBOO_CLI_PASSWORD} "$@"

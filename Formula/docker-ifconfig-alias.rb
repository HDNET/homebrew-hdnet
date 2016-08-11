class DockerIfconfigAlias < Formula
  url 'https://gist.githubusercontent.com/sofakartoffel/a246610ed5489f9dbd1f62543f0f40a2/raw/7bdb8165d11f16e1fec5eaaedcb5428a7efdb279/loopback-alias.sh'
  sha256 '7201f6907d4458b19ff67bffd8b29b155ce688377537981830374d52b1afb7ee'
  homepage 'http://www.hdnet.de/'
  version '0.0.1'

  def caveats
    <<-EOS.undent
	Kommand funktioniert nur mit root rechten:
   sudo brew services start docker-ifconfig-alias
  	EOS
  end

  def install
  	bin.install "loopback-alias.sh"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <false/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>/usr/local/bin/loopback-alias.sh</string>
          <string>10.254.254.254</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
      </dict>
    </plist>
    EOS
  end
end


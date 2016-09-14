class ContainerDevelopBase < Formula
  homepage "https://github.com/HDNET/container-develop-base"
  url "https://github.com/HDNET/container-develop-base/archive/master.tar.gz"
  sha256 "ec81c141ea6a172e5bb1074528e3e8dde63ad60004ae42c4b4165d5b091766dd"
  version "0.0.1"

  depends_on "docker-ifconfig-alias"

  def install
    pkgshare.install "docker-compose.yml", ".env"
  end

  plist_options :startup => true

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <true/>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>/usr/local/bin/docker-compose</string>
          <string>up</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{pkgshare}</string>
      </dict>
    </plist>
    EOS
  end
end

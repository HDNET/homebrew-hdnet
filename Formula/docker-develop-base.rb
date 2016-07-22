class DockerDevelopBase < Formula
  homepage "https://github.com/HDNET/docker-develop-base"
  url "https://github.com/HDNET/docker-develop-base/archive/master.tar.gz"
  sha256 "cd33040f5dde0e682acff8f5e9e99a653b9d5f31146bb6572bc5ce1256728640"
  version "0.0.1"

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

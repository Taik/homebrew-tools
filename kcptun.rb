class Kcptun < Formula
  desc 'A Fast & Secure Tunnel Based On KCP with N:M Multiplexing'
  homepage 'https://github.com/xtaci/kcptun'
  url 'https://github.com/xtaci/kcptun/releases/download/v20180926/kcptun-darwin-amd64-20180926.tar.gz'
  sha256 'ccc42eec51531298d69ed37e83768bf54de640f54f88adb11f062dbb8ab0e742'

  bottle :unneeded

  def install
    bin.install 'client_darwin_amd64' => 'kcptun-client'
    bin.install 'server_darwin_amd64' => 'kcptun-server'
  end

  test do
    system "#{bin}/kcptun-client", '--version'
    system "#{bin}/kcptun-server", '--version'
  end
end

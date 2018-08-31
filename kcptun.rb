class Kcptun < Formula
  desc 'A Fast & Secure Tunnel Based On KCP with N:M Multiplexing'
  homepage 'https://github.com/xtaci/kcptun'
  url 'https://github.com/xtaci/kcptun/releases/download/v20180810/kcptun-darwin-amd64-20180810.tar.gz'
  sha256 'd7712c773d04e1b79a36e8a277860d68a6effc061daefe67d97c3357692b26e3'

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

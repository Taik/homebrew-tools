class Kcptun < Formula
  desc 'A Fast & Secure Tunnel Based On KCP with N:M Multiplexing'
  homepage 'https://github.com/xtaci/kcptun'
  url 'https://github.com/xtaci/kcptun/releases/download/v20180316/kcptun-darwin-amd64-20180316.tar.gz'
  sha256 'bfe05490fc5b174f72c97f3b13f54d2bb936c6d657beeaab4c929df536cf1e76'

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

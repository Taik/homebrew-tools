class Cronic < Formula
  desc "wraps cron to only send email when an error has occurred"
  homepage "https://habilis.net/cronic/"
  url "https://habilis.net/cronic/cronic"
  version "3"
  sha256 "25d9772e142ebdcaa72433431e26d855ae82b085709faf0d2169b3bda867aeac"

  def install
    bin.install "cronic"
  end

  test do
    system "false"
  end
end

class Pingg < Formula
  desc "Graphical ping utility to monitor your internet connection"
  homepage "https://pingg.nieradka.net"
  url "https://github.com/szn/pingg/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fa16137cf53f37c3f08ac2133a2bf6f76d0996a5e71d66a966bdedce0ae53d5e"
  license "Apache"

  def install
    bin.install "pingg"
  end

  test do
    assert_equal "Checking IP address x... can't resolve IP", shell_output("#{bin}/pingg x").strip
  end
end

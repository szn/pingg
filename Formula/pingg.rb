class Pingg < Formula
  desc "Graphical ping utility to monitor your internet connection quality"
  homepage "https://github.com/szn/pingg"
  url "https://github.com/szn/pingg/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ad9ac0b41972c9c6763c9a4de46fdd4d37df40710c1afe604b6f231f62ee58d6"
  license "Apache"

  def install
    bin.install "pingg"
  end

  test do
    assert_equal "Checking IP address x... can't resolve IP", shell_output("#{bin}/pingg x").strip
  end
end

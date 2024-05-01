class Hello < Formula
  desc "Graphical ping utility to monitor your internet connection quality"
  homepage "https://github.com/szn/pingg"
  url "..."
  sha256 "..."
  license "Apache"

  def install
    bin.install "pingg"
  end

  test do
    assert_equal "Checking IP address x... can't resolve IP", shell_output("#{bin}/pingg x").strip
  end
end

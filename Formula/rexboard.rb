class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.5/rexboard-v0.34.5-aarch64-apple-darwin.tar.gz"
      sha256 "fa13be0aafe67410e0c537bd13d5ce00cc9f966a22d1febba96a9af60b095431"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.5/rexboard-v0.34.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ffa17aee22d5c03884a2c13582758c5f5d5da21d439d8ec54a3b4d18e411f2"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

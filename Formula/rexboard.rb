class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.19.0/rexboard-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd4015f5d0e49f3ffd87c9d69daddc6efff81c7317bc270630a64e68af5c5435"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.19.0/rexboard-v0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdf94fa7d4736632e04fc93b13e4f8f4c6f9283447af90826c75177450a1d6b9"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

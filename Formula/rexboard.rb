class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.0/rexboard-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "85bd4ffbb6f29a0be9288a870e16dbf8874d3767712c092c4ed60a2e4ca7e961"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.0/rexboard-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3485e891fab6f7c88be68118d79c6b4d84fe3ae36b6ae625df6372245f98842"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

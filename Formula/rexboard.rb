class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.32.0/rexboard-v0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "28fef00d454ba7372ab681ebe1e6574cf86ebcd41f3e6c311cc9db541d76db9c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.32.0/rexboard-v0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcb3b60bcdbd669e68b9b2f58586bda26b561c7cbefb54ef46547c5179c5c25f"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.3.0/rexboard-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0cbf181e89ffcf3a4d09f1f19640ba1f256f13cc65405c30cd227dcb14d978a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.3.0/rexboard-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a01550e128f7cdbacf6c6d04aa20e781b76ac1d86ca710699a1ae1766fa1ebf9"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

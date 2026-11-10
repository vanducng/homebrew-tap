class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.25.0/rexboard-v0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "752584e18a1dcd46761aaa185e4f834ce5b3e259b1cecb932c6e148b34d3cdba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.25.0/rexboard-v0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "553cf398f94935a1c38b96c12c6479201ee75f25c53515ac8d253b308e03d30e"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

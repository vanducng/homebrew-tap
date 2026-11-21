class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.0/rexboard-v0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3b019d58af3ab63d0188bdeb43ca64f6b83d79a9795214a5310c269b4629a71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.0/rexboard-v0.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "735b32028e6fafb27ff4c774efa0df72aec617f3e854acc1459552d37bbacd21"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

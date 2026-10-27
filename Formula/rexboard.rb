class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.13.0/rexboard-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "b22ae2928fd3e20c297d1e2bb3f1cb11a2d53e0988066fb21d43d7cf26fd109c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.13.0/rexboard-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f43e060c3d56394f9075d043bb28bd3c645c001f0684413676d2c3d77c6d0b0b"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

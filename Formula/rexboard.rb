class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.12.0/rexboard-v0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e08d5f57b883eacaa0d33812301588054f90eb788d6647c7ea461b96c718272"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.12.0/rexboard-v0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7aeff1204f1e8423fb57a89974c58547c0dc7700325e3e4f5e7762fdc66eb699"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

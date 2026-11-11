class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.31.0/rexboard-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "531b41a5e9aebd47acfd43bd7139a4b027a15e5b98a484c98e777854626b1423"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.31.0/rexboard-v0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8ef04b25bee9dfe09030fb9bbb8cdd9f71eb3ee03d05a2acff1b9f84c5c0de7"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.27.1/rexboard-v0.27.1-aarch64-apple-darwin.tar.gz"
      sha256 "f25fcf1fd52669cbfc7850f2925c9cd3d747b5246aace4a7d3397c153e21f118"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.27.1/rexboard-v0.27.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8b25da744e336469d50b0133bc6950fbfe3b652ed1de2bf33ff70a710015f88"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.11.1/rexboard-v0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "7d5d256fa949fe361107f86f45336f775500af5104fc2d4b28ff66c4ff53b464"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.11.1/rexboard-v0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be62ee10b0209bf6c837fcb03d9b3b52d7855ab51601fec481bf4cdf84871f3c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

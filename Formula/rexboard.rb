class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.15.0/rexboard-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "52d09f77f64d44bc1a4e939d890f49d6cf87ac38180405968fba73c1698a539a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.15.0/rexboard-v0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "074aa497a38082786a0626cf45bfb1b57d991454240df399bb9735f68b0b5002"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

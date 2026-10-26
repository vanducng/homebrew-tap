class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.2.0/rexboard-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "31373f184640eded4b90f64b85bf98620b832d41adc06c06034c0be71b6763d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.2.0/rexboard-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e92f50680cae7c7b66400dc2c192e5ae7e83e58681151a17155de7ad74ded3a8"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

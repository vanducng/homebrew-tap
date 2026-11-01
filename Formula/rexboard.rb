class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.22.0/rexboard-v0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "1a24cf077a57fd51280d8e742c5816ea1ac759b85c2e969431f151c73cdbf5cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.22.0/rexboard-v0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a1269a8ebff86693c61b21ecbee2b03a4cae9171e5e53b0b9878d862c4c335c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

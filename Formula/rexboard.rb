class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.2/rexboard-v0.16.2-aarch64-apple-darwin.tar.gz"
      sha256 "66438d1a603df531feb2a653747ae2fa22c02ad75ba0ba639e5522b2ff0087a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.2/rexboard-v0.16.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62012f7e03cfaddcc16834b6fa0c61ab7a57643ba96142d37c18a87d50103a77"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.0/rexboard-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "60b3211aeeea3cdad72f065c7cf9a40a2ec3535bcc3b686e3578aaf983ac71d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.0/rexboard-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "30a4e572e95de59dac77e0b39f866b22c7ca49c27f7e6a18ec220ee60d3a6c2c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

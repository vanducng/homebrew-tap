class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.1/rexboard-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "ac3f4369f6a1cb838d27d3490f7a31f3ceb9399488d7690779651a6798480764"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.1/rexboard-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7019f28996ff256ff8cfc4a020058b5fd61f2ceba6012ec742b680bb83e355fd"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

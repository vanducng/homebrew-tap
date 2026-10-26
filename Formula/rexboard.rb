class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.9.0/rexboard-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "4b878c286843c1bec8230be021ed120d02300b6c3553888d47cad6059c2543fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.9.0/rexboard-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea1cf2fc25c501038c7b8e45295ad63b4a3f43a8a0193f63bdf18419cae99e55"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

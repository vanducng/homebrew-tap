class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.5.0/rexboard-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "082ec730e5a3c6447244de9224db33be7232af4ce874496e59148313f67a767a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.5.0/rexboard-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab1ac6fa60002efe77df30cc4406e3557733f0cd78baf105e73886cb733d472d"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

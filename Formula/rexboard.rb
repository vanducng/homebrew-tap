class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.3/rexboard-v0.34.3-aarch64-apple-darwin.tar.gz"
      sha256 "d0ad335945a3f7fd31a77f67aacb54e899bf4f0596668cf7c29f54686e0e7890"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.3/rexboard-v0.34.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a7ae7c496a536d5af45f3500317abee8b61f8eeb42a58407e785c875344eecb"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

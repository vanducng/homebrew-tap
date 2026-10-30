class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.3/rexboard-v0.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "ee043128b816e39d559259f13189182cb8520b99a405d521e316f882f09b5563"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.3/rexboard-v0.16.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb0854cc5ae904090c93736959197740bebca9ef6f48fbc967ac15ef634af7ad"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

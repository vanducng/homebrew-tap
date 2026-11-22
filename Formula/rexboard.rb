class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.2/rexboard-v0.34.2-aarch64-apple-darwin.tar.gz"
      sha256 "03d41131d6cb215cb346845feb9e796771f74542f3c6e845af589eeed59604b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.2/rexboard-v0.34.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dc3f632736699e0f095cea8b0abea4323ea454e06e3103f9a0a3073b8f5c74c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

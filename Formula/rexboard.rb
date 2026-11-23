class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.36.0/rexboard-v0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "027a07867677ad7b4494e15f0cad89da1335bce1080cb7fae48bc0ad4f583007"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.36.0/rexboard-v0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f3b28d02bfdbc7541db409855fd2dc50d4ca486e59d26f439b268bf77a9ffae8"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

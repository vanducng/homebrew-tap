class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.20.0/rexboard-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6e4812c40dfb0fd63946980ab4b1a2d0e4268add2b7d8c678f0e0958bc75461"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.20.0/rexboard-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3aa3853a867551af6317f312415b63690820ef44c95d9d45975c8cdb3ac4b6aa"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

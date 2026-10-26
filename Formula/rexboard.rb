class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.2/rexboard-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "c14c597f2b3541aeb8e69da622d1a629ffb3d1411f9ca10275afa95bbc283ecf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.6.2/rexboard-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1e43af7f12d21ddd332fbed3d98c3c121c86c08ea0604db569936bb00e05631"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

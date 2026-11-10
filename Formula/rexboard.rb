class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.28.0/rexboard-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "1013fbe261123e71d2a7b51480bb4d5aea6fc01b709eb1b2d94abadc55542ebf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.28.0/rexboard-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2f42799cdb7a3d908a8f78ad101581e41315d6f39784cde495af5c12461abc8"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

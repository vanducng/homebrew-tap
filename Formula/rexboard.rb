class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.26.0/rexboard-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "29988a50417b8f6a490769269678fdbfd7172036e0727820e6b7ba23f32deedd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.26.0/rexboard-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8fa22e75ba557d389d445b0366f66dc9ad2be8cfe426a4c8e51b3d5608ee70e5"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.4/rexboard-v0.34.4-aarch64-apple-darwin.tar.gz"
      sha256 "e02da8dedbdf508ca0ca454ce44c95a58047c00cb94ef0e8aaf8b3efc6fc3dee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.4/rexboard-v0.34.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f735ce242c1715c500086e5d56cf4d595faa0be780f9ad3003d82006fd19637"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

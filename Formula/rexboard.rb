class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.21.0/rexboard-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "b61a6963d1cf55c8484952421d5f93650787db82230da504c1df4465d2ea1116"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.21.0/rexboard-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "83810d30c3c8ccf5c3b73dba9a72eab104e7a0bc24f2918932c410fc72069493"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

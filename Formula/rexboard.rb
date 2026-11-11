class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.30.0/rexboard-v0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "e8f5c1054e7bb729d56249fbc500154c3cc24f470fb7be1e590ea63edd4f846f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.30.0/rexboard-v0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "670f7fc330daaa5d9d0cdc5fff4d6ba920c205a6057876e82cb31e943765df20"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.1/rexboard-v0.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "1aaf81aa0e194d27caa8104830d47e2bccd9c8d373532944055c5d409f0ec945"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.34.1/rexboard-v0.34.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8931a1b8321c472b58c9ea7f92dff41f77ba4f86b032eff1d0be12bdf3e6b75"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

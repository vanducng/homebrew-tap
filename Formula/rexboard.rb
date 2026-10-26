class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.11.0/rexboard-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a21262bab0e9b0c4d8aa0c2bfcc14ecbac6c5dd9f7afcd8057f35ced408e5b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.11.0/rexboard-v0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f59221e90fa1a89399988dc35727e98f28c0e66677dbbab536355ad8bd24dd03"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

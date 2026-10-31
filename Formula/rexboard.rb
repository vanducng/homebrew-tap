class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.17.0/rexboard-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "198975d9b5a5d6cb955030d4be67dbc2eac775de31f710a91b7859d40dd4baee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.17.0/rexboard-v0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fc0777ba7aeb0f4e999d6ca132f3ec4694f26467059211674e657bb8a73652c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

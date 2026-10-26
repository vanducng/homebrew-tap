class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.7.0/rexboard-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1529e75e32d9e7df18af21c2882410450f73f6ad5897fe49937cebbd620a2cc5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.7.0/rexboard-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4325e9b535b1ce40739944ab78809cd95ee5dbe792f6dbeb75ba380c7b2a0909"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

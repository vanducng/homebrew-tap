class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.14.1/rexboard-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "3339656d00ab1de1637f37fa92e722bbbc896e9ee7ebd37e2e039299e58850a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.14.1/rexboard-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04f27355943c43c2299a6e611488fa20ac8df0de03465e60db9f8019d57f3ab4"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.10.0/rexboard-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "b546968e70927f77c68884cc60a16f757939bb992d836cc44f62d8a505311b39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.10.0/rexboard-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a71420f6a316779ab100c9953e0dd99bf7be76c4916b7ec68fce8fb61de02853"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.4.0/rexboard-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "f435ce485bc4918c2fbcf37eebe45c56a325890b6e6274072401968fc7a054ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.4.0/rexboard-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "729a9f242a97f389e39dbe13a5853c1bc61f1e1c64469161b8872fd1f1a22aa3"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

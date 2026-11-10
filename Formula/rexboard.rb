class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.27.0/rexboard-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "360fbf47b5cc73902499ba0865fa88dae17b9fb580ada17a1db69d34c7b4a26f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.27.0/rexboard-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "041b82e9df5a2b380b4c226bf97debe019299750e263f32774141dcb888742df"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

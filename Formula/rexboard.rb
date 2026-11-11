class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.33.0/rexboard-v0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "2fee08397a689a409c9f32adb56e041602469ba55573162b479c0ba91e163837"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.33.0/rexboard-v0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd7e387ea00193bb60ffd0544d16aa25223943035c20e63145d5dd11523567aa"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.18.0/rexboard-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "4bd0ca72b9903f994612c7ef1d478916cc2f61da109afb89cd970463dbe4ad29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.18.0/rexboard-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb5e9abbe1a890034ee87275998cc8408e755b3060387d1b42ce93061fe13d32"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

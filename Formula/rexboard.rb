class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.29.0/rexboard-v0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a931f6d3a7e7f84ee6da94ef765e8ba84e81ff20f133e3282c95123a79ff802"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.29.0/rexboard-v0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c27d2b4ab6240eb3670491f37a326d56c8a51e180323e141048d71c7ee0fb095"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

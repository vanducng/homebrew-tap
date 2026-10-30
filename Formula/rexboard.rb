class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.1/rexboard-v0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "74811dc33079c24640e0e44ab7fb295f6a62b6468569a7ca85f63b3b02a58240"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.16.1/rexboard-v0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4872f1f29300b80eee0308eb7130baacccfdb65d2a78b902182fada16248485b"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

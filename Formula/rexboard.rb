class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.24.0/rexboard-v0.24.0-aarch64-apple-darwin.tar.gz"
      sha256 "218673a1ae0ccf5b7a51b09acaeafbaccf56b5aeb4be587b35a0cf7655232280"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.24.0/rexboard-v0.24.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4da11d763e4c264c2324f5840ec55b1275f72534bae339cc415bf8e6d07723c"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

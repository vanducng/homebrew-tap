class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.35.0/rexboard-v0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "0130b8ed7d47ab3a743846b6b0f9136111cc4255ca09645c6840045457e2aa85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.35.0/rexboard-v0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1acd314ed4705deaac0ffffa679eda6f73ee714a72e1202b83cefda91d6aa2b8"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

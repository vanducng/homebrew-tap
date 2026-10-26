class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.8.0/rexboard-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "39f93f5c02edc89ca7ca4f123741ce7954e313551f9191b072f8f1c4e001a151"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.8.0/rexboard-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76b78706c7cef9a269b4d738abdbe5c8bffb170345bfa253f1012a06cd805d39"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

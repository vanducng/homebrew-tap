class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.14.0/rexboard-v0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "b7b8a0a4a3dfd42e0501f2f914742a1a84d95adef63e3c5288fd77a2a31f6c20"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.14.0/rexboard-v0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0a285a1fb8a853431fa377cca1e2128a7c18e0f87faf29a20bae102e7d18e17"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

class Rexboard < Formula
  desc "Attention board for coding-agent panes across Rex hosts"
  homepage "https://github.com/vanducng/rexboard"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vanducng/rexboard/releases/download/v0.23.0/rexboard-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "0998db1a5825f995a91fce77210fb776eace1ad70232577d5febcf7899e4e712"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/vanducng/rexboard/releases/download/v0.23.0/rexboard-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64a301ea54ffd018e3738372adcfad59649e89c45c06591445694a30807245a4"
    end
  end

  def install
    bin.install "rexboard"
  end

  test do
    assert_match "rexboard #{version}", shell_output("#{bin}/rexboard --version")
  end
end

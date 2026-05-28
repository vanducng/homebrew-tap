class Miudb < Formula
  MIUDB_VERSION = "v0.2.0-go.3".freeze

  desc "Headless database CLI for agents and Neovim"
  homepage "https://github.com/vanducng/miu-db"
  url "https://github.com/vanducng/miu-db/archive/refs/tags/v0.2.0-go.3.tar.gz"
  version "0.2.0-go.3"
  sha256 "112c157bcae6ff96bd5beef6dc15761ae7d52d2d4ce73c65df6f2c3f8e5c82a7"
  license "MIT"
  head "https://github.com/vanducng/miu-db.git", branch: "golang"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/vanducng/miu-db/internal/cli.version=#{MIUDB_VERSION}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/miudb"
  end

  test do
    output = shell_output("#{bin}/miudb version --output json")
    assert_match MIUDB_VERSION, output
  end
end

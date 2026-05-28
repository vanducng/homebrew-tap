class Miudb < Formula
  MIUDB_VERSION = "v0.2.0-go.6".freeze

  desc "Headless database CLI for humans and agents"
  homepage "https://github.com/vanducng/miu-db"
  url "https://github.com/vanducng/miu-db/archive/refs/tags/v0.2.0-go.6.tar.gz"
  version "0.2.0-go.6"
  sha256 "9c0061e9d7bb58aa88564251f4830e895ccd753241d66f2a83c484b849a750e2"
  license "MIT"
  head "https://github.com/vanducng/miu-db.git", branch: "dev"

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

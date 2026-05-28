class Miudb < Formula
  MIUDB_VERSION = "v0.2.0-go.4".freeze

  desc "Headless database CLI for agents and Neovim"
  homepage "https://github.com/vanducng/miu-db"
  url "https://github.com/vanducng/miu-db/archive/refs/tags/v0.2.0-go.4.tar.gz"
  version "0.2.0-go.4"
  sha256 "77d7123dc106c96d44bbef508019abec25995a0be86a0b2bedecc40a8e100ca2"
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

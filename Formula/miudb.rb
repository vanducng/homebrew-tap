class Miudb < Formula
  MIUDB_VERSION = "v0.2.0-go.5".freeze

  desc "Headless database CLI for agents and Neovim"
  homepage "https://github.com/vanducng/miu-db"
  url "https://github.com/vanducng/miu-db/archive/refs/tags/v0.2.0-go.5.tar.gz"
  version "0.2.0-go.5"
  sha256 "ad8e8b6ad3d428519727ea049117c27b2c074ac6d242cea74f7fd97fc73ce8c8"
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

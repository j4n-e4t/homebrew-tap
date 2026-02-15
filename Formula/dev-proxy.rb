class DevProxy < Formula
  desc "Local reverse proxy for multi-project development"
  homepage "https://github.com/j4n-e4t/dev-proxy"
  url "https://github.com/j4n-e4t/dev-proxy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1dc6d24fbb8350b1d88e71595bfd2feb696fc8c3bc4f51a899de1769fb4687aa"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/julian/dev-proxy/internal/version.Version=v#{version}
      -X github.com/julian/dev-proxy/internal/version.Commit=homebrew
      -X github.com/julian/dev-proxy/internal/version.Date=unknown
    ]

    system "go", "build", *std_go_args(ldflags: ldflags.join(" ")), "./cmd/dev-proxy"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/dev-proxy version").strip
  end
end

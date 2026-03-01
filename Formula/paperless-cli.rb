class PaperlessCli < Formula
  desc "Terminal UI for browsing and searching Paperless-ngx documents"
  homepage "https://github.com/j4n-e4t/paperless-cli"
  version "0.1.0"
  url "https://github.com/j4n-e4t/paperless-cli/releases/download/v#{version}/paperless-cli-#{version}.tar.gz"
  sha256 "3d0845dc742451658e34396807d684fd40bbba2256554a11125399cf088823ca"
  license "REPLACE_WITH_PROJECT_LICENSE"

  depends_on "node"

  def install
    bin.install "paperless-cli"
    pkgshare.install "README.md" if File.exist?("README.md")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/paperless-cli --version").strip
  end
end

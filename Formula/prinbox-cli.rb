class PrinboxCli < Formula
  desc "Command-line inbox for the pull requests waiting on you, through the GitHub CLI"
  homepage "https://github.com/creeonix/prinbox"
  url "https://github.com/creeonix/prinbox/releases/download/v0.5.0/prinbox-0.5.0-macos.tar.gz"
  sha256 "afa1a96459f01d7643a5139f1dd0028bcca335d2331e864d0ce9c60e4179aa40"
  license "MIT"

  depends_on :macos
  depends_on "gh"

  def install
    bin.install "prinbox"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prinbox --version")
  end
end

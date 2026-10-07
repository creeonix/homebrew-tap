class PrinboxCli < Formula
  desc "Command-line inbox for the pull requests waiting on you, through the GitHub CLI"
  homepage "https://github.com/creeonix/prinbox"
  url "https://github.com/creeonix/prinbox/releases/download/v0.7.0/prinbox-0.7.0-macos.tar.gz"
  sha256 "460c78eaee79f1d2838947e87b686ca8e6031c302b121126f01c6f08c5d7257a"
  license "MIT"

  depends_on "gh"
  depends_on :macos

  def install
    bin.install "prinbox"
  end

  def caveats
    <<~EOS
      To serve the inbox to AI agents over the Model Context Protocol:
        claude mcp add prinbox -- prinbox mcp
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/prinbox --version")
  end
end

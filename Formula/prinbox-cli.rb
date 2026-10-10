class PrinboxCli < Formula
  desc "Command-line inbox for the pull requests waiting on you, through the GitHub CLI"
  homepage "https://github.com/creeonix/prinbox"
  url "https://github.com/creeonix/prinbox/releases/download/v0.8.0/prinbox-0.8.0-macos.tar.gz"
  sha256 "4a7208d5f875944eac6828c6589cdb335410f541c018bad4118f354f8974722e"
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

cask "prinbox" do
  version "0.8.1"
  sha256 "7db2e718b565b50a4d7b9c4c4bcacfa8ae3255ae76d50fbc6b7c6386ba8f2cdb"

  url "https://github.com/creeonix/prinbox/releases/download/v#{version}/PRInbox-#{version}.dmg"
  name "PRInbox"
  desc "Menu-bar inbox for the pull requests waiting on you, signed in through the GitHub CLI"
  homepage "https://github.com/creeonix/prinbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "PRInbox.app"

  uninstall quit: "io.github.creeonix.prinbox"

  zap trash: [
    "~/.config/prinbox",
    "~/Library/Application Support/prinbox",
    "~/Library/Caches/io.github.creeonix.prinbox",
  ]

  caveats <<~EOS
    PRInbox needs the GitHub CLI, signed in:
      brew install gh && gh auth login
  EOS
end

# Homebrew tap for PRInbox

[PRInbox](https://github.com/creeonix/prinbox) is a macOS menu-bar inbox for the pull requests waiting on you,
signed in through the GitHub CLI, with a `prinbox` command for terminals, status lines and pickers.

```sh
brew install --cask creeonix/tap/prinbox       # the app (PRInbox.app)
brew install creeonix/tap/prinbox-cli          # the prinbox command
```

The app is signed ad hoc, so macOS blocks its first launch: install the cask with `--no-quarantine`, or
right-click PRInbox in Applications once and choose Open. Both need the GitHub CLI, signed in:
`brew install gh && gh auth login`.

The cask and the formula are generated from the templates in `packaging/homebrew` of the main repository
by `scripts/update-tap.sh` at every release.

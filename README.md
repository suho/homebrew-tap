# Homebrew Tap

Homebrew tap for my tools.

## Casks

### Nova Launcher

The cask is updated by automation from tagged `suho/nova-launcher` releases.
When a `v*` tag is pushed in the app repo, the release workflow publishes the
app zip and dispatches this tap to update `Casks/nova-launcher.rb` with the new
version and SHA-256 checksum.

Install without manually tapping the repo:

```bash
brew install --cask suho/tap/nova-launcher
```

Upgrade:

```bash
brew upgrade --cask suho/tap/nova-launcher
```

Uninstall:

```bash
brew uninstall --cask suho/tap/nova-launcher
```

# homebrew-tap

Homebrew tap for [Handset](https://github.com/davidamunga/handset), which mirrors and controls an
Android phone from your Mac inside a realistic device frame.

```sh
brew install --cask davidamunga/tap/handset
```

That installs `Handset.app` (signed and notarised), the `handset` command and the tools it needs
(`adb` from `android-platform-tools` and `ffmpeg`).

Upgrade with `brew upgrade --cask handset`, remove with `brew uninstall --cask handset`
(`--zap` also removes `~/.config/handset`; your screenshots and recordings in `~/Pictures/handset`
are never touched).

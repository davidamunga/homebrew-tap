# homebrew-tap

Homebrew tap for apps and command line tools by [David Amunga](https://github.com/davidamunga).

```sh
brew tap davidamunga/tap
```

Or install straight from the tap without tapping first:

```sh
brew install --cask davidamunga/tap/<name>   # Mac apps
brew install davidamunga/tap/<name>          # command line tools
```

Recent Homebrew versions only load third-party taps you have trusted. If it says the tap is not trusted,
run `brew trust davidamunga/tap` and try again.

## What is in here

| Name | Kind | What it is | Install |
|---|---|---|---|
| [Handset](https://github.com/davidamunga/handset) | cask | Mirror and control an Android phone from your Mac inside a realistic device frame. Built on the scrcpy server. Signed and notarised. | `brew install --cask davidamunga/tap/handset` |

## Layout

- `Casks/` holds Mac apps (`<name>.rb`).
- `Formula/` holds command line tools (`<name>.rb`).

Upgrade with `brew upgrade`, remove with `brew uninstall` (add `--cask` for apps; `--zap` also removes an
app's settings). Nothing here ever touches your own files.

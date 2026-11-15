# KrystofS Homebrew Tap

Personal Homebrew tap for macOS utilities.

## Install Charge Speed Viewer

```bash
brew install --cask --no-quarantine KrystofS/tap/chargespeedviewer
```

Or tap first and install:

```bash
brew tap KrystofS/tap
brew install --cask --no-quarantine chargespeedviewer
```

> **Note:** `--no-quarantine` is recommended while releases are ad-hoc signed and not notarized by Apple. If you omit it and Gatekeeper blocks the app, run `xattr -cr /Applications/ChargeSpeedViewer.app` or allow it under **System Settings → Privacy & Security → Open Anyway**.

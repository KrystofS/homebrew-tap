cask "chargespeedviewer" do
  version "1.2"
  sha256 "83ade367d4da3b820fd3376970f721733017d2a4af79abdf26bb515ea29d310e"

  url "https://github.com/KrystofS/charge-speed-viewer/releases/download/v#{version}/ChargeSpeedViewer-v#{version}.dmg"
  name "Charge Speed Viewer"
  desc "macOS menu bar utility monitoring real-time battery and power metrics"
  homepage "https://github.com/KrystofS/charge-speed-viewer"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ChargeSpeedViewer.app"

  zap trash: [
    "~/Library/Preferences/com.krystofsuchanek.ChargeSpeedViewer.plist",
  ]

  caveats <<~EOS
    If macOS Gatekeeper blocks the first launch because the app is ad-hoc signed,
    install with `--no-quarantine` or run:
      xattr -cr /Applications/ChargeSpeedViewer.app
  EOS
end

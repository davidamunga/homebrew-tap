cask "handset" do
  version "0.11.3"
  sha256 "1946ed15b857194e889aabd5c8434bd95f35007cafa45a30c1a791d5292cae9d"

  url "https://github.com/davidamunga/handset/releases/download/v#{version}/Handset-#{version}-macos.zip"
  name "Handset"
  desc "Android screen mirror in a phone frame, built on scrcpy"
  homepage "https://github.com/davidamunga/handset"

  depends_on cask: "android-platform-tools"
  depends_on formula: "ffmpeg"
  depends_on macos: :monterey

  app "Handset.app"
  binary "#{appdir}/Handset.app/Contents/MacOS/handset"

  zap trash: "~/.config/handset"

  caveats <<~EOS
    Handset talks to the phone through adb and records with ffmpeg; both are installed as dependencies.
    Turn on USB debugging on the phone, plug it in and open Handset.
  EOS
end

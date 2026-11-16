cask "handset" do
  version "0.16.0"
  sha256 "669ba1e7c6ba4503d619ea2a58015554ef1e2c1ea2b1f91ba63ddb88cb6c551e"

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

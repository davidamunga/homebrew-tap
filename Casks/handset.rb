cask "handset" do
  version "0.1.2"
  sha256 "901a56fbef83116a4def2941b068c6327f3239702e3641acb8d5185b8a4de4b9"

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

cask "limitbar" do
  version "0.1.0"
  sha256 "fd3ac1227d8d2d76166ba8a0eadf53d96c0bb40efda140aacaeea318124ca49d"

  url "https://github.com/emirbn/LimitBar/releases/download/v#{version}/LimitBar-macos-universal-#{version}.zip"
  name "LimitBar"
  desc "Track AI coding limits and usage from the macOS menu bar"
  homepage "https://limitbar.basaran.dev"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "LimitBar.app"

  zap trash: [
    "~/.config/limitbar",
    "~/Library/Application Support/LimitBar",
    "~/Library/Caches/com.emirbn.LimitBar",
    "~/Library/Preferences/com.emirbn.LimitBar.plist",
  ]
end

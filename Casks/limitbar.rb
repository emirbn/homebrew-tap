cask "limitbar" do
  version "0.1.0"
  sha256 "f7aaffcd685c8915f4abd8fd48af2342d796933e0ba3984cdb7aae57b2217a0c"

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

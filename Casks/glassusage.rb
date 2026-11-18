cask "glassusage" do
  version "1.5.0"
  sha256 "34bb8c1591d03e52fe8a15b67f973fc389b6adc5b9fc250acb531b1319d6feae"

  url "https://github.com/bubb4rd/GlassUsage/releases/download/v#{version}/GlassUsage-#{version}.zip"
  name "GlassUsage"
  desc "Coding agent plan limits and token spend in the menu bar"
  homepage "https://github.com/bubb4rd/GlassUsage"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "GlassUsage.app"

  uninstall quit: "io.github.bubb4rd.GlassUsage"

  zap trash: [
    "~/Library/Application Support/GlassUsage",
    "~/Library/Caches/io.github.bubb4rd.GlassUsage",
    "~/Library/HTTPStorages/io.github.bubb4rd.GlassUsage",
    "~/Library/Preferences/io.github.bubb4rd.GlassUsage.plist",
  ]
end

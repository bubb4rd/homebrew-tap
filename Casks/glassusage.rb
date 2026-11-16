cask "glassusage" do
  version "1.2.3"
  sha256 "ba5586466246db440fb5c34154f5c21b64ead4a5f9a18595dd29f47b3ee09587"

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

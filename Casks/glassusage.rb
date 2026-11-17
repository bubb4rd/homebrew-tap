cask "glassusage" do
  version "1.4.1"
  sha256 "bfa6ee3d5c23c0156fa0f9342347445625b3f37fa5b7f73673eaa60dc010f6e1"

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

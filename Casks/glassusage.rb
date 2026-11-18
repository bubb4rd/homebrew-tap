cask "glassusage" do
  version "1.4.7"
  sha256 "470a8f4bf5a49f6a5d8f26727d74c59469bedd4c2fa0bb02daf0852fbfd04c70"

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

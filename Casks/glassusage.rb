cask "glassusage" do
  version "1.6.3"
  sha256 "347775a5257093fbbaa1b381d5722038ad6b9c1b46caec2fac9e1381b492eb6f"

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

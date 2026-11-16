cask "wisp" do
  version "1.2.0"
  sha256 "e6942e760d756e07616608e7347b5ae618deb879eff6998d895c31ca0ea5014b"

  url "https://github.com/gaurang404/wisp/releases/download/v#{version}/Wisp-#{version}.dmg"
  name "Wisp"
  desc "Native API client with Keychain credentials, GraphQL and OpenAPI import"
  homepage "https://wisp.build/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Wisp.app"

  zap trash: [
    "~/Library/Application Support/Wisp",
    "~/Library/Preferences/build.wisp.app.plist",
    "~/Library/Saved Application State/build.wisp.app.savedState",
  ]
end

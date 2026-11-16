cask "wisp" do
  version "1.1.0"
  sha256 "915c8a947bbb5d9192172c55da396d3ebe3f900eb006ca3de9fd4aee877d2f9a"

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

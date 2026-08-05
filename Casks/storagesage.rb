cask "storagesage" do
  version "1.0.0"
  sha256 "623104a25efcc918852347b1cf9da815877bfb7dfa3d4fc50a37ed8b2ad90d67"

  url "https://github.com/StefanBoblic/StorageSage/releases/download/v#{version}/StorageSage-#{version}.zip"
  name "StorageSage"
  desc "Analyze disk usage and safely clean developer caches"
  homepage "https://github.com/StefanBoblic/StorageSage"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "StorageSage.app"

  zap trash: [
    "~/Library/Caches/com.local.StorageSage",
    "~/Library/Preferences/com.local.StorageSage.plist",
    "~/Library/Saved Application State/com.local.StorageSage.savedState",
  ]

  caveats <<~EOS
    StorageSage is currently ad-hoc signed. On first launch, macOS may require
    you to right-click the app and choose Open, or approve it in
    System Settings > Privacy & Security.
  EOS
end

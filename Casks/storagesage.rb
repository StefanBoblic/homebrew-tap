cask "storagesage" do
  version "1.2.0"
  sha256 "8bed6df38c4d920105bd7ce9b00ff6b070631e1cb542c71b769631d8d12c8a77"

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

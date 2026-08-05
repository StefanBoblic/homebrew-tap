cask "storagesage" do
  version "1.1.0"
  sha256 "2776bc3a7085d7962af12c495696484a2bd29a71664b336a61cafece84a49c49"

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

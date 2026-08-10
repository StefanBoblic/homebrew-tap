cask "storagesage" do
  version "1.3.0"
  sha256 "97c38f06ab6e7056b8c45809b6f55721fb0e14e3bc4341ccf9574a78611c7380"

  url "https://github.com/StefanBoblic/StorageSage/releases/download/v#{version}/StorageSage-#{version}.zip"
  name "StorageSage"
  desc "Analyze disk usage, track growth, and safely clean storage"
  homepage "https://github.com/StefanBoblic/StorageSage"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "StorageSage.app"

  zap trash: [
    "~/Library/Caches/com.local.StorageSage",
    "~/Library/Caches/com.stefanboblic.StorageSage",
    "~/Library/Preferences/com.local.StorageSage.plist",
    "~/Library/Preferences/com.stefanboblic.StorageSage.plist",
    "~/Library/Saved Application State/com.local.StorageSage.savedState",
    "~/Library/Saved Application State/com.stefanboblic.StorageSage.savedState",
  ]

  caveats <<~EOS
    StorageSage is currently ad-hoc signed. On first launch, macOS may require
    you to right-click the app and choose Open, or approve it in
    System Settings > Privacy & Security.
  EOS
end

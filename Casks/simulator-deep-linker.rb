cask "simulator-deep-linker" do
  version "0.1.0"
  sha256 "7bdc41a168ba16658ee51cf287de5d380d75b1b154b977a5e6f016c74eaa8b4d"

  url "https://github.com/StefanBoblic/SimulatorDeepLinker/releases/download/v#{version}/SimulatorDeepLinker-#{version}.zip"
  name "SimulatorDeepLinker"
  desc "macOS utility for saving and opening deep links in iOS Simulator"
  homepage "https://github.com/StefanBoblic/SimulatorDeepLinker"

  app "SimulatorDeepLinker.app"

  zap trash: [
    "~/Library/Application Support/SimulatorDeepLinker",
    "~/Library/Application Support/com.stefanboblic.SimulatorDeepLinker",
    "~/Library/Preferences/com.stefanboblic.SimulatorDeepLinker.plist",
  ]
end

cask "simulator-deep-linker" do
  version "0.2.8"
  sha256 "235d3719e7d108118bc3b6afdd82c7ec901281c2e169b9f9f9a4fc4b36177503"

  url "https://github.com/StefanBoblic/SimulatorDeepLinker/releases/download/v#{version}/SimulatorDeepLinker-#{version}.zip"
  name "SimulatorDeepLinker"
  desc "Save and open deep links on iOS and Android developer devices"
  homepage "https://github.com/StefanBoblic/SimulatorDeepLinker"

  depends_on :macos

  app "SimulatorDeepLinker.app"

  zap trash: [
    "~/Library/Application Support/com.stefan.SimulatorDeepLinker",
    "~/Library/Application Support/com.stefanboblic.SimulatorDeepLinker",
    "~/Library/Application Support/SimulatorDeepLinker",
    "~/Library/Preferences/com.stefan.SimulatorDeepLinker.plist",
    "~/Library/Preferences/com.stefanboblic.SimulatorDeepLinker.plist",
  ]
end

cask "simulator-deep-linker" do
  version "0.2.2"
  sha256 "87c0444989978e3988c469df9fd01317c41901efbd82216f3074ec0ca73146d0"

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

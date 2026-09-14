cask "simulator-deep-linker" do
  version "0.2.1"
  sha256 "3c179567b1f6dadd6ffc75dcd9a73f36dc2f4e7393644cf3ddac5805a6359569"

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

cask "simulator-deep-linker" do
  version "0.2.3"
  sha256 "fb5405bb8e89a16eb5ce03d2f96ee5232189f3d446226acbaed9297628212b7c"

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

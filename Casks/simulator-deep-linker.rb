cask "simulator-deep-linker" do
  version "0.2.7"
  sha256 "28f9bd72df0a00488b91b0c47892fd68297365cc272e2b2cb205b35aed0fc083"

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

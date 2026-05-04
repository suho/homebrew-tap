cask "nova-launcher" do
  version "0.6.0"
  sha256 "6994c01f51fcfb71c5e8a76e6c4cdfb2d7f67ef0659142427f3a240dd44ea152"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: ">= :tahoe"

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

cask "nova-launcher" do
  version "0.1.0"
  sha256 "103522c30fabe93b71ad56e5d550ca30cd63e0fed6cd5a0757e43c98a13105f6"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: ">= :tahoe"

  app "NovaLauncher.app"

  uninstall quit: "app.nova-launcher"

  zap trash: "~/Library/Preferences/app.nova-launcher.plist"
end

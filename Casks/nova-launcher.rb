cask "nova-launcher" do
  version "0.8.0"
  sha256 "1de7040b205a7dd63b034d5aa98a27167f2d633c8ccb49cb0ea9f9a29acef34d"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: :tahoe

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

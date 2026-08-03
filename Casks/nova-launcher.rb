cask "nova-launcher" do
  version "0.14.0"
  sha256 "b8bfad3e315b5b84caf2a9823bc713d2035f695e33c1e9ebdd2dc5cc459dd9bf"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: :tahoe

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

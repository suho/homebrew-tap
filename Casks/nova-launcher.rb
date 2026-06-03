cask "nova-launcher" do
  version "0.12.0"
  sha256 "77d085b9cbee5a9da0fb89dc65b8343edb9463b6d7e1e6b5d7ba00a5d7e59732"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: :tahoe

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

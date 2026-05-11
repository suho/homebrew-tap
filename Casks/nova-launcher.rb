cask "nova-launcher" do
  version "0.7.0"
  sha256 "2d4b16d8c961925aa5c76aec6ddf5f698c97b36c919577acf416a1b113fb8f99"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: ">= :tahoe"

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

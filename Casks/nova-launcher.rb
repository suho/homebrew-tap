cask "nova-launcher" do
  version "0.10.0"
  sha256 "429d941ea9b7b9083938815187dad3d5cb4c570efece84caa6bbce24c90c6e52"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: :tahoe

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

cask "nova-launcher" do
  version "0.3.0"
  sha256 "61cddcbb6099d2dd1c5a8cf8d917364e46e06f3bdf19265ff1c18d289273cde6"

  url "https://github.com/suho/nova-launcher/releases/download/v#{version}/NovaLauncher-#{version}.zip"
  name "Nova Launcher"
  desc "Keyboard-first launcher for local applications"
  homepage "https://github.com/suho/nova-launcher"

  depends_on macos: ">= :tahoe"

  app "NovaLauncher.app"

  uninstall quit: "dev.suho.NovaLauncher"

  zap trash: "~/Library/Preferences/dev.suho.NovaLauncher.plist"
end

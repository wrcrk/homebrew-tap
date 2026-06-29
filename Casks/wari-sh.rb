cask "wari-sh" do
  version "0.1.1"
  sha256 "075f318b58423f4968219bb2b75321d89dee45f78eb8c1c6e72b2ec9dc29c24c"   # → shasum -a 256 dist/wari.sh.dmg

  # Public downloads repo (source stays private at hyper-money-org/wari-sh). Attach
  # dist/wari.sh.dmg to a release tagged "v#{version}".
  url "https://github.com/wrcrk/wari-sh/releases/download/v#{version}/wari.sh.dmg"
  name "wari.sh"
  desc "AI-powered native macOS terminal for Vibecoder"
  homepage "https://wari.sh"

  depends_on macos: :tahoe         # macOS 26 (Tahoe) or newer
  depends_on arch: :arm64          # Apple Silicon (MLX)

  app "wari.sh.app"

  zap trash: [
    "~/Library/Preferences/sh.wari.terminal.plist",
    "~/Library/Saved Application State/sh.wari.terminal.savedState",
    "~/.config/wari",
    "~/.wari_shell",
  ]
end

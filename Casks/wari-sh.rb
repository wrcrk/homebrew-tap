cask "wari-sh" do
  version "0.1.2"
  sha256 "2519f176a0e18882f9b8f0351dec0afc5806677cd72e84e95b3dfac29635ae42"   # → shasum -a 256 dist/wari.sh.dmg

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

# Homebrew cask for bananaShell.
cask "bananashell" do
  version "0.1.0"
  sha256 "ec8ef6aa3c94d1b7fcfce85341752eb6a753e51cf52231e294fa6517e8f08ff1"

  url "https://github.com/howon-kim/bananaShell/releases/download/v#{version}/bananaShell-#{version}.dmg"
  name "bananaShell"
  desc "Terminal with persistent tmux sessions, grouped grids and a notch terminal"
  homepage "https://github.com/howon-kim/bananaShell"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on formula: "tmux"
  depends_on macos: :ventura

  app "bananaShell.app"

  zap trash: [
    "~/Library/Application Support/bananaShell",
    "~/Library/Logs/bananaShell",
    "~/Library/Preferences/local.bananaShell.plist",
  ]
end

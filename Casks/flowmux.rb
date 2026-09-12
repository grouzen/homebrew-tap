cask "flowmux" do
  version "0.5.1"
  sha256 "4a6d0ed3cf4b2eae8955eb1b0baed345de0f462d6aaed5a89338d2f98ae5fb7f"

  url "https://github.com/grouzen/flowmux/releases/download/v#{version}/flowmux-v#{version}-universal2-apple-darwin.tar.gz"
  name "Flowmux"
  desc "Terminal-native AI agent multiplexer"
  homepage "https://github.com/grouzen/flowmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "tmux"

  binary "flowmux-v#{version}-universal2-apple-darwin/flowmux"
end

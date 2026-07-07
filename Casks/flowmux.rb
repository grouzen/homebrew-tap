cask "flowmux" do
  version "0.3.0"
  sha256 "b49b863f6689178293a4907b39f2f07b10d6025e0e321bb52d210c84e02db25a"

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

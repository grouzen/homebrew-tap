cask "flowmux" do
  version "0.2.1"
  sha256 "7d35881ef532228b451adbc2eec3bb01c0fa5b2366ba618ee454792604a2e10b"

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

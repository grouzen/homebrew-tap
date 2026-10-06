cask "flowmux" do
  version "0.5.3"
  sha256 "2bb7dfbda6363564db8c2a2eff8491d21255b1db50930b3a0cfb8a8f0ea823a9"

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

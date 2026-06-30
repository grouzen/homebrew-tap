cask "flowmux" do
  version "0.1.1"
  sha256 "9a335225c77d98f879fda1607510ca8f8d1ec812824708d7ccdf0380f3247a87"

  url "https://github.com/grouzen/flowmux/releases/download/v#{version}/flowmux-v#{version}-aarch64-apple-darwin.tar.gz",
      verified: "github.com/grouzen/flowmux/"
  name "Flowmux"
  desc "Terminal-native AI agent multiplexer"
  homepage "https://github.com/grouzen/flowmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on formula: "tmux"

  binary "flowmux-v#{version}-aarch64-apple-darwin/flowmux"
end


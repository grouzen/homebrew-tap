cask "flowmux" do
  version "0.1.2"
  sha256 "c82b962f4928f8a24b04eed14326dcc71ce502f23e3599aba57bdd17a92573fa"

  url "https://github.com/grouzen/flowmux/releases/download/v#{version}/flowmux-v#{version}-aarch64-apple-darwin.tar.gz"
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

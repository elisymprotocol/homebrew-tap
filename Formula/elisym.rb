class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.3"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.3/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "1c6a9f14c2831d3bd8c2d86e1d79575c6e895c9b2fab07563550bd8a5b5423e4"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.3/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "94ab4032ae520cd4500c05f19ef3369533d7d36f46618a705561444f7145b3d7"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

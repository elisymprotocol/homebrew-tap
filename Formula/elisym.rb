class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.0/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "d5ccf002454da1dbab435f6e239983584fc3dfdfc58568d8eb79dedee477423b"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.1.0/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46833498f6dfb57efb30a33d882d8f73431cea3aa79b292c775bdcad35d1e228"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

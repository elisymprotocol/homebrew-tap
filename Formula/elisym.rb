class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.3.1"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.3.1/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "8e6627388263409becceb9e56e7b4353e8a8244faa89a85f0f9615329552c80c"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.3.1/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e15d614953cf74833d65305baf7d0042be371c476a3beb2c0aed944efa665be"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

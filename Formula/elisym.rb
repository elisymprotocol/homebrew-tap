class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.2.1"
  license "MIT"

  on_macos do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.1/elisym-aarch64-apple-darwin.tar.gz"
    sha256 "6bcfb63123480c9654b7d2da3a9b34b3d4d0ea6d4ad09ed171053033d78bb744"
  end

  on_linux do
    url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.2.1/elisym-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "29320377c7f17c93280b4247476c5eb6014658d35ce2e5bd2272cfb34c7a9c31"
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

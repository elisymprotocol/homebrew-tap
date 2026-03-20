class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.4/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "3b7c86dbb3616871930bfe7f4ac15b59cac4232c480fa8fb3b8b671bd83dc43b"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.4/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "efa887ceb9960ccdbcbac0bb20f960c7d6a38603f5f3b056d5fe67adb86bdf1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.4/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f79dc530c62de15511b1e58ad63bc00943040b3c84d0260a2a8f41360c7d219"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.4/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "152723fd14d157d7ebc268a35bf0e2e3b32b6cad61f347c9d93af5a5e19e9854"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.4.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.18/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "73b822ddb0a9f715f11c15539f30fbdebe90c38e5323af5a487bf0d27d841ab1"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.18/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "7dd25bb03f391d89005fe748cc666b87e08580d56775968cbd85698a5d6924c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.18/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dbce4c6079c471a35d2ff400711bd591410dfdae2ea8ecda4f0f1c34c2bff8c8"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.4.18/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc55b4f79121c0b395a3ba86ba54a75fb423b9929e95a0a68961b0c710f6d453"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

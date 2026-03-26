class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.2/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "83a50f7a9d3b57a0618a2a60e4862ec78bf974d218a42438805b8781c5513436"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.2/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "d696477f1c4be1caccab7429210e1e1a520fb98ae645f247cc6bdf6fc54d5e2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.2/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9790ca58473b888ea0650a3fc82091022cd39307b86dd919bb54eee1e1ce101a"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c634bae8561837e7c31b64b9a2069e53017a31bd514a6039e83f9e2600bfa8b"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

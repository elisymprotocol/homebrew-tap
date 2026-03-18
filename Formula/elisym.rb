class Elisym < Formula
  desc "CLI agent runner for the elisym protocol"
  homepage "https://github.com/elisymprotocol/elisym-client"
  version "v0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.2/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "fd23dd810afe8763f48bacc000281d1938e64c59502bf5cd6ed3107f5c02ea0f"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.2/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "a6d29119cef9ef2be704dcc0290d7813370298c71025d218593baba221bf2948"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.2/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf7e9717d97541084ff75fe73deea62e07687f9fbabedf0a7b0ae5f76baec198"
    end
    on_intel do
      url "https://github.com/elisymprotocol/elisym-client/releases/download/v0.5.2/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24efcd140df9a6cb6acafa81fcec96564aca42f6caabae9ee667f9ef1c065748"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

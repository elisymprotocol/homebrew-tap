class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.5/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "d54e87ff1b890052a3fee39297fed9cd1bbbea13bbd514311544ea7a0399c70a"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.5/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "38d18b7a5fb9c1b61c8152acc57a548b24ccc0193f4e04d90413b314cafa4e0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.5/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c2e2b123e6b6b4341b599f6bbaaab027cdd40c009d3c724a5618465e7b7241b6"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.5/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57f14bfd9d9d2d8bb2cc865b2f9659ce2647b7a2fbea9bf18e7f771a8af4490f"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

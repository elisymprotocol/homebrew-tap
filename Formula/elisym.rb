class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.3/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "f1ce83ba6d8f6739fcfc0beb80c24fbf4240074b12c6cb917d685761a4f97bce"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.3/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "ad4c0a3388c3d3d21b940174fc47e2125d852d39f6afc9081c5a1533859d1d5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.3/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47bf7720f32df1649b6594838b598d47f8b41af95a589a7a8a993432cad2d7c7"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.3/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fefcd9f239ffebdc0692a661d96a0fd20a39b679dec64b9a130110f54b8386d"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

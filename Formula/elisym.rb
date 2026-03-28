class Elisym < Formula
  desc "CLI agent runner for elisym"
  homepage "https://github.com/elisymlabs/elisym-client"
  version "v0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.4/elisym-aarch64-apple-darwin.tar.gz"
      sha256 "b7426840125a0ebc7bd44a267e611f8dfe9deb2cd72d366c9587537c8073d2ba"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.4/elisym-x86_64-apple-darwin.tar.gz"
      sha256 "b34f9f51459c7177aaa168ad7ad5369b175c5d8848af46540b8a633e2d47b9ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.4/elisym-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7d66e8eb059144a737809069947962e3bedb22ca1f9bfa6b4c8fc53b30a00d9c"
    end
    on_intel do
      url "https://github.com/elisymlabs/elisym-client/releases/download/v0.6.4/elisym-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "572fa7cf2d7bcf92e19a5aac6b421b683c7a85b525744f319eda22272d75d11d"
    end
  end

  def install
    bin.install "elisym"
  end

  test do
    assert_match "elisym", shell_output("#{bin}/elisym --help")
  end
end

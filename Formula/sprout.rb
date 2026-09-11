class Sprout < Formula
  desc "Terminal-based habit tracker"
  homepage "https://github.com/kb019/sprout"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kb019/sprout/releases/download/v#{version}/sprout-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e070fbe05c3ef17f69182472a4df8aea9e6c4bfd81eaeccb74110ac52ffb1f9e"
    end
    on_intel do
      url "https://github.com/kb019/sprout/releases/download/v#{version}/sprout-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "495819fa15afeb732beb8b8b4e0a01f3d0c7fe7821b047f099c27b848487b4d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kb019/sprout/releases/download/v#{version}/sprout-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "10bc76c59bb667c296f6c963d47354b75188ac4208822230940b1d02e1dc1d1f"
    end
    on_intel do
      url "https://github.com/kb019/sprout/releases/download/v#{version}/sprout-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7e51768129f4fdf7eae5cba55f9b0488195ea3efc402f722bae62be0986ab4d"
    end
  end

  def install
    bin.install "sprout"
  end

  test do
    system "#{bin}/sprout", "--version"
  end
end

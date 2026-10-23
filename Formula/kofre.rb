class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.6/kofre-macos-arm64"
      sha256 "f9175b4e81e53dbeb04f60fe958cb8ca404e92e5c2913b284c798b670269f7cd"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.6/kofre-macos-x64"
      sha256 "c82493e409e586b6a46c7fdea31babc0cbd1cf99a8891a1bc8092beebe08ba33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.6/kofre-linux-x64"
      sha256 "ca30f078e967acc3088dec20c931f0d2521f0cec1f2f5389a2473a487a053804"
    end
  end

  def install
    binary = Dir["kofre-*"].first
    bin.install binary => "kofre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kofre --version")
  end
end

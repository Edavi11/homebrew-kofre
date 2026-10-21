class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.2/kofre-macos-arm64"
      sha256 "e1cac3b75e3dd3233752b62a1eb2370fb5c0e47a21579675e649b8f05df5ba4d"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.2/kofre-macos-x64"
      sha256 "19475b305b0368c68c4f788b90e0d4af21141a89ca6ccf8c96e324508be5277e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.2/kofre-linux-x64"
      sha256 "2dd441f92f32fb4934cb3161879fb7b20d9ae8f2e58f31193f1a61f539583462"
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

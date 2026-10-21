class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.0/kofre-macos-arm64"
      sha256 "a7cc8042dc0d3309f0a63e89edc420d0c5e97f93196d2de6e2bc41425f01aed6"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.0/kofre-macos-x64"
      sha256 "900e1e15932c77f52a1811acc0c00c8869a26c06a0536beaa20b6c33aede8d3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.0/kofre-linux-x64"
      sha256 "4089561716e104f3789b4d84ca35af7a1a8c768e931e437f443c3e9d21beccc7"
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

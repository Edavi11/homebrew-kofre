class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.1/kofre-macos-arm64"
      sha256 "1550b76150d1b33cb522ddddf09757f6bc849f0e34cba87ac4167935a41b23fb"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.1/kofre-macos-x64"
      sha256 "fe5612cb19d8e2dcb6f86ae4a0b69f7c8ca7d4d996bf1f51e6c4358b188dbbe1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.1/kofre-linux-x64"
      sha256 "aab849e306eec813b50cf15dfcd96865b1577f6d9395d9d9aa474f20dfe58728"
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

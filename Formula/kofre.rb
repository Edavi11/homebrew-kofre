class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.2/kofre-macos-arm64"
      sha256 "9771639477adda10bba83c72c2cd881f1d7a0bf696b2541279b243e697af99c8"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.2/kofre-macos-x64"
      sha256 "b7bf6d8048c04934f290f29a95aca0952d2c97b783309e4703e30ca7aeda2a0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.2/kofre-linux-x64"
      sha256 "ca49d36f557e47344765aa658e6ca180d65ae37dd2ffa6cec03da75785a60a8d"
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

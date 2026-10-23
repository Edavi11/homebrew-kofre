class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.7/kofre-macos-arm64"
      sha256 "2683093284c6e99ac6507c31c4eff5541369ce597162d1eef83c88002df95114"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.7/kofre-macos-x64"
      sha256 "ac3940774f9035f255990b91dccfc5100c86e8a7f31b31089a790d0dec1a8423"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.7/kofre-linux-x64"
      sha256 "a62b6bafe07277b9e013185c6c16cc9eb23e2a80dcfd8ff77dd4455377f4649b"
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

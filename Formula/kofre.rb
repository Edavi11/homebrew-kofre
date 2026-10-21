class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.1/kofre-macos-arm64"
      sha256 "e524146fd0dcb3614e6e3e3146f2d6acd2c033a66407f0d6587f4a73387f2067"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.1/kofre-macos-x64"
      sha256 "012b3c36876b352b8d6981d8b6a584f0d1bafec3f85c611c392a61005ddc6ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.1/kofre-linux-x64"
      sha256 "8628212e02a5663ee9c2c7e526fe335e3f828e1144043524bca9b4b17039e21c"
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

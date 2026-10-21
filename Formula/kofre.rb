class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.4/kofre-macos-arm64"
      sha256 "9baf8fe86aa1f396033eaf3284e6e316b47c33aa7e57695ef5d18e5f36fac0a0"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.4/kofre-macos-x64"
      sha256 "fd13919ecc18d7aadea53470918b211e92469713ee6f27296a018b96e1357b08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.4/kofre-linux-x64"
      sha256 "b67bd7a8d4820746091622cdea42b1931a03614f7a255eb1dafd1460ebb302bb"
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

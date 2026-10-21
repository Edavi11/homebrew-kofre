class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.1/kofre-macos-arm64"
      sha256 "30513e9f6609c2e33684f41c19d93087ef15fa45179b7307b822e27ebea69a87"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.1/kofre-macos-x64"
      sha256 "890927a69d386702e2b53844e3adf71b122c126b134761e87abebf8753a19a3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.1/kofre-linux-x64"
      sha256 "195fb97f21985e430c25c69fedca93885951f4b16c8c60bf42023096c32f28f0"
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

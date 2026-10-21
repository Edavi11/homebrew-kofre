class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.3/kofre-macos-arm64"
      sha256 "b2feabd17cd8fbe8ce1975a4e8bcaf6ecf097914bfa3bead4373a13e5a9dbac1"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.3/kofre-macos-x64"
      sha256 "c28ea72b96733ba3d39046cb59cd4bfa056fbb43b778615f3e811bd0ab42b9dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.3/kofre-linux-x64"
      sha256 "1520e9da48682164a57d6bef0725cbd607b9e4a951af77fe20a4beed24d23d16"
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

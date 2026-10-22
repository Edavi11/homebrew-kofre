class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.5/kofre-macos-arm64"
      sha256 "7134b7cb76523e0318424063438ad40d2975b2b6a10758f25828161283c5741a"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.5/kofre-macos-x64"
      sha256 "e0a030b2cec95347dd4e7b7397c5709c27123bc7a67dd5ecc08ed47e5df99541"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.5/kofre-linux-x64"
      sha256 "b190d10af3fba7527f03741c5eee03217eba4c8b384f6202ae4f337a92e92198"
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

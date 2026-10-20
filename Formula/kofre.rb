class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.1.0/kofre-macos-arm64"
      sha256 "649a3b33519104ed7ca837490ee6c4dcc8db2e3d9d2c0ce4dc9004222d2a4317"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.1.0/kofre-macos-x64"
      sha256 "2a8558aec641863529e9a86fb029995b025535c52195ea698fe7443b2416e823"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.1.0/kofre-linux-x64"
      sha256 "49d68270e5783e3169bf8d31901d06182f4ea14e870f1bf36a51170d9c894734"
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

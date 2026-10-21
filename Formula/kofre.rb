class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.0/kofre-macos-arm64"
      sha256 "7f968b1d2de40057f1bead6963f6da0819498d402045131c9171a1bcbf03e175"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.0/kofre-macos-x64"
      sha256 "dbc0ab9f25df36603fbd8715bcfa2fc51f392146a1ac650a19b2cbccb5e76e5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.2.0/kofre-linux-x64"
      sha256 "e2e9f2c74b9ce2d8c1c791c91f66eb7d538448ac151718fdb18b4aafb4a4dad8"
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

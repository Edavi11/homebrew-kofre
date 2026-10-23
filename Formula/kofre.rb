class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.8/kofre-macos-arm64"
      sha256 "dd77086b93b7c290a29e672d513909dd2324ceb49d79263614153f9085d6747d"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.8/kofre-macos-x64"
      sha256 "fe8425d932c7253c64d8fcdc61deac9e05c373d75dff60f4666a8f51453ed400"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.4.8/kofre-linux-x64"
      sha256 "33a545b36e622b8ac2e990e6fd92027a6de4f3ac5139ccbb3ddab5a66c5c8f32"
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

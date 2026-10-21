class Kofre < Formula
  desc "Secretos de proyecto cifrados en tu máquina"
  homepage "https://github.com/Edavi11/kofre-releases"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.0/kofre-macos-arm64"
      sha256 "763936ac5c8b75d8f3243ee608baafc703281d52a31cc28e2dbd63e6e9cb1598"
    end
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.0/kofre-macos-x64"
      sha256 "19f29792e06fa0a175d209abb9c3a7ef948ab796a7bdce2f9ae992265ebb3ec7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Edavi11/kofre-releases/releases/download/v0.3.0/kofre-linux-x64"
      sha256 "2f79584c52889fd206c1b072f8185f3fe36d0a156fd8346221469264af6723d0"
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

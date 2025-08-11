# Formula/snapzap.rb
class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.0/snapzap-1.0.0-macos-x86_64.tar.gz"
      sha256 "25ba8e0f23fd119998392decb253393cb4e3180a6a09fb9335b8a52d291bb6e2"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

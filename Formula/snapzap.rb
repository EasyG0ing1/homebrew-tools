class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.0/snapzap-1.0.0-macos-x64.tar.gz"
      sha256 "3164436de6dffceae5245d6e72e2010d022a5e931aa6d23e9ff45563810e64e6"
    end

    on_arm do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.0/snapzap-1.0.0-macos-arm64.tar.gz"
      sha256 "016d773a1b27bdfd3674fc4e35ffb7a0f00af1f26232ca7a1e3527d2c3ca87af"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

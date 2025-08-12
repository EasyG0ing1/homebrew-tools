class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.5"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.0/snapzap-1.0.0-macos-x64.tar.gz"
      sha256 "22b3a8d4fdb0af6c377fe1c76017aac14c9d0672e8123fcdf67dea690a1f7214"
    end

    on_arm do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.0/snapzap-1.0.0-macos-arm64.tar.gz"
      sha256 "765016159902f24894a8b4151fcd8dd00c746584a41fd6fa105c6023ce6ba9b2"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

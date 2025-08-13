class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.9"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.9/snapzap-1.0.9-macos-x64.tar.gz"
      sha256 "d6d725162fe466f4ee93b59c2dfa08f5e1004fce7c90b30e81f7640e3146cb57"
    end

    on_arm do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.9/snapzap-1.0.9-macos-x64.tar.gz"
      sha256 "9b3eda33854ce729f74a34dc1a486c8228b5bf72fdaabec6f89021e5a2f79f85"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.15"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.15/snapzap-1.0.15-macos-x64.tar.gz"
      sha256 "f2d0dd84094632e0dd60b9cad1443901498d04510941d830ddc04637363aaf14"
    end

    on_arm do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.15/snapzap-1.0.15-macos-x64.tar.gz"
      sha256 "bd36895732e20efa80b385e549e080220460bae9bdf6adf261e96ebc685bf5e8"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

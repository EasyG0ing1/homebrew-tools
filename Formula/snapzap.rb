class Snapzap < Formula
  desc "SnapZap helps you clean up snapshots on APFS volumes in MacOS"
  homepage "https://github.com/EasyG0ing1/SnapZap"
  version "1.0.10"

  on_macos do
    on_intel do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.10/snapzap-1.0.10-macos-x64.tar.gz"
      sha256 "2c6df41da87529d695f2a83a3fc7277fc02bf78d687f4b67cfc0b20f8799da4d"
    end

    on_arm do
      url "https://github.com/EasyG0ing1/SnapZap/releases/download/1.0.10/snapzap-1.0.10-macos-x64.tar.gz"
      sha256 "80886466fd77526f06fd213d907dc0963cf418d6549c76abd1ad7cd606b3ba1e"
    end
  end

  def install
    bin.install "snapzap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/snapzap --version")
  end
end

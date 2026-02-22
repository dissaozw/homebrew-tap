class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "be083a98713ecf8c2f35885c10dfc6969ae5fddd7875cb9f8b6f5037667358e4"
  license "MIT"

  def install
    bin.install "bin/claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

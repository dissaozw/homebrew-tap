class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "bc758ff2b5ff451f15a9aefdd121e73c011c38ecc6864499ffffc66355ca1c95"
  license "MIT"

  def install
    bin.install "bin/claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

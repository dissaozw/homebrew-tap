class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "b713ce038d7c513fbba809073e182c4924725886e8a660f89d4daccb0cd23ccf"
  license "MIT"

  def install
    bin.install "bin/claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

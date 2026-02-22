class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.4.tar.gz"
  sha256 "18f7ea24f908ea934324a32a14e532c93ab7bb7d7160eb2ef7561538fd146377"
  license "MIT"

  def install
    bin.install "bin/claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

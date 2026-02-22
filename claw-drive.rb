class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "521df00461cd18f236ee832a4392af47afdbcc8fc3d7cb033e484f334161a398"
  license "MIT"

  def install
    bin.install "bin/claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

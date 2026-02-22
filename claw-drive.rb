class ClawDrive < Formula
  desc "AI-managed personal file drive — auto-categorize, tag, and retrieve files"
  homepage "https://github.com/dissaozw/claw-drive"
  url "https://github.com/dissaozw/claw-drive/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "748dc84512b6c01a2a56af10f619a5aec728abd7ed25409117681a6a0616820e"
  license "MIT"

  def install
    bin.install "bin/claw-drive.sh" => "claw-drive"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/claw-drive", "help"
  end
end

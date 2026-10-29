class Peek < Formula
  desc "One-shot snapshot of CPU, RAM, GPU and SSD with the top culprits for each"
  homepage "https://github.com/vedntp/peek"
  url "https://github.com/vedntp/peek/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "62e928d04c9d0c96ea6a3fa03bf6112923dd5b0470703be400dc630e42fd31f2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "peek"
  end

  test do
    assert_match "peek #{version}", shell_output("#{bin}/peek --version")
  end
end

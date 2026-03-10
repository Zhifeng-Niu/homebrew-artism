class Artism < Formula
  desc "A parametric 3D modeling tool"
  homepage "https://github.com/Zhifeng-Niu/artism"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Zhifeng-Niu/artism/releases/download/v0.1.0/artism-aarch64-apple-darwin"
      sha256 "4c38356d73fc5a40697ae91205ae9dd6678216a9e93e3a9c8954d442d87982bf"
    end
    on_intel do
      url "https://github.com/Zhifeng-Niu/artism/releases/download/v0.1.0/artism-x86_64-apple-darwin"
      sha256 "7a6660a0bcfda6474629f4d3b7e32601763cbd6c71c6a431359c7c81af46b9f8"
    end
  end

  def install
    bin.install "artism-aarch64-apple-darwin" => "artism" if Hardware::CPU.arm?
    bin.install "artism-x86_64-apple-darwin" => "artism" if Hardware::CPU.intel?
  end

  test do
    system "#{bin}/artism", "--version"
  end
end
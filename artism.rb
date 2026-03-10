# Homebrew Formula for Artism
# Install with: brew tap zhifeng-niu/artism && brew install artism

class Artism < Formula
  desc "AI-Native CAD/CAM for Makers"
  homepage "https://github.com/zhifeng-niu/artism"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zhifeng-niu/artism/releases/download/v#{version}/artism-aarch64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/zhifeng-niu/artism/releases/download/v#{version}/artism-x86_64-apple-darwin"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "artism-#{Hardware::CPU.arch}-apple-darwin" => "artism"
  end

  test do
    system "#{bin}/artism", "--version"
  end
end

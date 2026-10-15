class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/whizystems/redmine-cli"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.9/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "16247f822a8b820b914c39cdede9d38a89e7d54d21734c687f33edf49dd90b7e"
    else
      url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.9/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "775fa65a2c64ebdf488a23b2b5f142397280239998670687822827387fdd08bc"
    end
  end

  on_linux do
    url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.9/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "86397dc079e3afd788ecd20898d72c1c1f1e6954a5d82bf015828ff1ea309bba"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end

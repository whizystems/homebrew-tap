class Rdm < Formula
  desc "Agent-first Redmine CLI with markdown-optimized output"
  homepage "https://github.com/whizystems/redmine-cli"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.10/rdm-aarch64-apple-darwin.tar.gz"
      sha256 "fbe56ed22a62e9da1057945c60039f6c531623910f56c8b5be24507a9904db78"
    else
      url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.10/rdm-x86_64-apple-darwin.tar.gz"
      sha256 "1edad29352d92712a5eec2f22837a743f7ad2e40f018ba6481878351e62ecfc8"
    end
  end

  on_linux do
    url "https://github.com/whizystems/redmine-cli/releases/download/v0.2.10/rdm-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "029ab8fc5a8d17d65e29a34406c1668d0e7fd2c119613997205ff842b48dca01"
  end

  def install
    bin.install "rdm"
  end

  test do
    system "#{bin}/rdm", "--version"
  end
end

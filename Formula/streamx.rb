# Generated with JReleaser 1.22.0 at 2026-03-10T11:58:05.14006951Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.5"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.5/streamx-0.5.5-linux-aarch64.zip"
    sha256 "8496aa2338071386a9f28ae63e53445d5c2eed89fb4a6df7ac4e1dbd33bd5ed3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.5/streamx-0.5.5-linux-x86_64.zip"
    sha256 "393fa2ec377bf39f4314f420dc34cc8a35e2aa1de25179eab57024fc4ae063ba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.5/streamx-0.5.5-macos-aarch64.zip"
    sha256 "57e1c1bc438e6b8bf181a4cc55f40edcb5a8ed399cff54c860c844c56ecda863"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.5/streamx-0.5.5-macos-x86_64.zip"
    sha256 "2e7505fa4dcae85cf72fbaf1dd215d27b43937b46782b5fefe3c572662739234"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.5", output
  end
end

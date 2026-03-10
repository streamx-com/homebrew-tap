# Generated with JReleaser 1.22.0 at 2026-03-10T12:39:10.867054687Z

class StreamxAT056 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.6"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.6/streamx-0.5.6-linux-aarch64.zip"
    sha256 "e8b0cbca6d64f4aa73282550a912cfa9c590a0661c1d6049dc0a023c3b34d1ae"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.6/streamx-0.5.6-linux-x86_64.zip"
    sha256 "698c78a068547a2986a59457bd422448b8fd7061361adb7ad2b7f9f4297328d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.6/streamx-0.5.6-macos-aarch64.zip"
    sha256 "d36612b831dc448c568c9fc2f60518889caec541d52fc6c87fd8a874cb0fe871"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.6/streamx-0.5.6-macos-x86_64.zip"
    sha256 "733ec55c97b7947c7eebbc5f981d67ca79fc9fa7f7a4bda5ec7f3c7c0c701c5c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.6", output
  end
end

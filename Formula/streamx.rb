# Generated with JReleaser 1.22.0 at 2026-03-10T10:08:46.999253329Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.3"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.3/streamx-0.5.3-linux-aarch64.zip"
    sha256 "488f3a03e7a1488a502a3aae40da5a900222d913777da67eb56291104bf33f3e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.3/streamx-0.5.3-linux-x86_64.zip"
    sha256 "21ef0db439ca23e386362634f0815090994b756831586a16d0b39baceb9da4de"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.3/streamx-0.5.3-macos-aarch64.zip"
    sha256 "5fefc244f712567a727cd873efa12406ffb6f592c26ff3427f0b01956789d7af"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.3/streamx-0.5.3-macos-x86_64.zip"
    sha256 "c566ea9ff212fa179cf4dc45b4a588ac343b05d4d89fb7f3aa096d4ce984a39b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.3", output
  end
end

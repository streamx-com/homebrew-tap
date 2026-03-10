# Generated with JReleaser 1.22.0 at 2026-03-10T08:20:26.899200923Z

class StreamxAT051 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.1/streamx-0.5.1-linux-aarch64.zip"
    sha256 "54ba0feb281c69e5975f473f880b2d9322c1ed76b06233db9dc0ffbed61e4bcb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.1/streamx-0.5.1-linux-x86_64.zip"
    sha256 "c91e9fd86998d8ec1d2e65db9a94fe98b9e0ddcb68c6400668a936b2df84ea2c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.1/streamx-0.5.1-macos-aarch64.zip"
    sha256 "106bfb46295efd69439f16f20e392b89681f3b852abc178ff044a96ef0b635fb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.1/streamx-0.5.1-macos-x86_64.zip"
    sha256 "60a25d4c1a704722a0c92dd7d42191565d2ed38cbc5dae33df910a63328554ba"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.1", output
  end
end

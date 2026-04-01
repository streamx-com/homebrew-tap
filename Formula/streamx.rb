# Generated with JReleaser 1.22.0 at 2026-04-01T07:42:27.766236049Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.0/streamx-2.0.0-linux-aarch64.zip"
    sha256 "3938415e608748b5bd09a21cb64373fe40e5ebf631b7737bb5992b96b1618239"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.0/streamx-2.0.0-linux-x86_64.zip"
    sha256 "a4887b6a3844791516c8a5eb587025da2f7519a5ea1fade5bd73f988e275d160"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.0/streamx-2.0.0-macos-aarch64.zip"
    sha256 "4909befcdc20e3643e3a6b60a91d1329e039c94c427c2a903bbd7d7864fa9835"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.0/streamx-2.0.0-macos-x86_64.zip"
    sha256 "4749a745e0ab7b433d17eb6917d85d361558146dc5b5eb2741067c49822a4e5e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0", output
  end
end

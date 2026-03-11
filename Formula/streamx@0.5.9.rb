# Generated with JReleaser 1.22.0 at 2026-03-11T11:39:28.850202286Z

class StreamxAT059 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.9"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.9/streamx-0.5.9-linux-aarch64.zip"
    sha256 "d74634448f2f7d8c89f1d6b2612d0635ccf6c603f0b3f84185315cbbefed9f52"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.9/streamx-0.5.9-linux-x86_64.zip"
    sha256 "93fac96ad9eb731184194e5724a895a210aeb740f3a2b2b1df0ff8d2b2b71de0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.9/streamx-0.5.9-macos-aarch64.zip"
    sha256 "37be5706a7cdbf7105e8ad67f3180d857c139df2934120e3193fb4f288652774"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.9/streamx-0.5.9-macos-x86_64.zip"
    sha256 "ef77f3728269aac2fc5e99f0745b4a574d5e66ee3ddd80a7903dd2b97154f3b2"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.9", output
  end
end

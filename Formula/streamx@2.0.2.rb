# Generated with JReleaser 1.22.0 at 2026-04-02T10:09:27.564736743Z

class StreamxAT202 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.2"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.2/streamx-2.0.2-linux-aarch64.zip"
    sha256 "795b016d49896f5aa0f152c3b1d3592fcce6d1d09f1067a12d3278f7859ad0fa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.2/streamx-2.0.2-linux-x86_64.zip"
    sha256 "8172cd0e15743ffd5e36cafacc2f1e893437a5782c82cd49a2d03d4b54a03691"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.2/streamx-2.0.2-macos-aarch64.zip"
    sha256 "256f4c1eae141550f89c91edd72774b300f7710c9f31b60cb18deb0fe3f01d20"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.2/streamx-2.0.2-macos-x86_64.zip"
    sha256 "fc3db6290ba26d541c33735ac7b9700a2495c24c6002c44a33cc3951f1a04496"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.2", output
  end
end

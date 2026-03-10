# Generated with JReleaser 1.22.0 at 2026-03-10T09:11:31.69861248Z

class StreamxAT052 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.2"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.2/streamx-0.5.2-linux-aarch64.zip"
    sha256 "1f17fd7fc663da4087184c820c79e11f2e026079d3a4427873696b437d5fe90e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.2/streamx-0.5.2-linux-x86_64.zip"
    sha256 "89c49aa98f9efcb706c930d3b401c6e28334110155f17c4a2c1a3473d7057450"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.2/streamx-0.5.2-macos-aarch64.zip"
    sha256 "90e8e995b9e4870079b5a3c2bba5efd785df2090160122c7a7646794f1b96d82"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.2/streamx-0.5.2-macos-x86_64.zip"
    sha256 "7f4716158964491a10b17e622781c7b4135400c7aafccb99b085aa9551f34ceb"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.2", output
  end
end

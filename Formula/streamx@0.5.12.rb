# Generated with JReleaser 1.22.0 at 2026-03-12T06:04:03.69801692Z

class StreamxAT0512 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.12"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.12/streamx-0.5.12-linux-aarch64.zip"
    sha256 "23020c4069c985abbaa5040630a0c9119511267b6ca849ac64c331f0911e31ef"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.12/streamx-0.5.12-linux-x86_64.zip"
    sha256 "0f3671420c945f551fc0bdf707c7596f77a400ddad5c8cc188114df7b24f29b3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.12/streamx-0.5.12-macos-aarch64.zip"
    sha256 "9b1812cf58098d62c0991b277a5217e0c307806f44843663f1846e64cea13fec"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.12/streamx-0.5.12-macos-x86_64.zip"
    sha256 "e4b128ee16c168c9ce4805e706f58c9d937746f9220e96e183d754ed7fccff05"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.12", output
  end
end

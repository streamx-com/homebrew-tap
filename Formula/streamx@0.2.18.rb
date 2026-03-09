# Generated with JReleaser 1.22.0 at 2026-03-09T14:06:08.015434988Z

class StreamxAT0218 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.2.18"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.2.18/streamx-0.2.18-linux-aarch64.zip"
    sha256 "a945e722abeba97c02de2c957daba81a060dc951345c4d4177d969d48ac0d23a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.2.18/streamx-0.2.18-linux-x86_64.zip"
    sha256 "9a1b40cf22a98003bbd649b6fe66aab12fa22a9654782da6c3d8cb37731e2dfc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.2.18/streamx-0.2.18-macos-aarch64.zip"
    sha256 "bae0a457d0b3a2d171407d50691d09fcfd1bc2c83fd8a29d3a5b20214394f077"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.2.18/streamx-0.2.18-macos-x86_64.zip"
    sha256 "95f98ccd55957ceaf5fa7ca69f48283c557d03f8755f12e07a39ebcd188b6e1d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.2.18", output
  end
end

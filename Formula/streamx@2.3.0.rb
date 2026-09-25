# Generated with JReleaser 1.22.0 at 2026-09-25T07:39:37.978918326Z

class StreamxAT230 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.3.0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.3.0/streamx-2.3.0-linux-aarch64.zip"
    sha256 "722a02ac7453f498c53719ad081d21285c27e92b7f5521ce517e1f315e704195"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.3.0/streamx-2.3.0-linux-x86_64.zip"
    sha256 "709a84dde4a3080373ba23ff9f7c355cefedd2799ebb36db554386336f172969"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.3.0/streamx-2.3.0-macos-aarch64.zip"
    sha256 "7cba396213be181af18caeee368a4ddffe85bc0a47ef46dedebd264ef6302e38"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.3.0", output
  end
end

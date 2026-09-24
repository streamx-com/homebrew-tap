# Generated with JReleaser 1.22.0 at 2026-09-24T07:42:59.664283112Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.0"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.0/streamx-2.1.0-linux-aarch64.zip"
    sha256 "aa082ce8303d3668934e229560ee8bd24ca0fb984f759424da37b4fb39902027"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.0/streamx-2.1.0-linux-x86_64.zip"
    sha256 "a39b7acdd0f42996890d7532ad6ea693df4903dede556ed959d2baf431138ece"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.0/streamx-2.1.0-macos-aarch64.zip"
    sha256 "5499d56f2e4a172e7cde58ed107555a3589e78d8a896e99b5edad3863b27b8a3"
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
    assert_match "2.1.0", output
  end
end

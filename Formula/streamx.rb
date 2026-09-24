# Generated with JReleaser 1.22.0 at 2026-09-24T12:24:56.642320188Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.1.1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.1/streamx-2.1.1-linux-aarch64.zip"
    sha256 "2e3dff33ca11826a91f87d37ce44ae89a234c378c64af2c78daac19577455f4a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.1/streamx-2.1.1-linux-x86_64.zip"
    sha256 "69e4ef0e5921a28209a31a31aeb26f3d9837f8be16fefcc9d8c6fd9116ec3535"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.1/streamx-2.1.1-macos-aarch64.zip"
    sha256 "52425b126d91749068dd1de85fefb23eef35472186fa7fbe1c4dac23ba42cfb7"
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
    assert_match "2.1.1", output
  end
end

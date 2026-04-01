# Generated with JReleaser 1.22.0 at 2026-04-01T12:46:50.625560486Z

class StreamxAT201 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.1/streamx-2.0.1-linux-aarch64.zip"
    sha256 "6780d155ccf0969c73dedcb3b06c82dcc7e4dfaa89b00addf5b8f85527874643"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.1/streamx-2.0.1-linux-x86_64.zip"
    sha256 "f3f9fe023a7a324361e3cb056dead9196fc127d2ccc4797016c773b430b5afa7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.1/streamx-2.0.1-macos-aarch64.zip"
    sha256 "08a0b16194f83be5dfe8b6b64a1bc4271133c76e03b18b4a5704de04f8108a1e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.1/streamx-2.0.1-macos-x86_64.zip"
    sha256 "148e26cd3e3df972c955d7dcad54f2e8b044156f64297a4670bc6d725476518d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1", output
  end
end

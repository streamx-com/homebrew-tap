# Generated with JReleaser 1.22.0 at 2026-03-10T11:23:28.215575702Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.4"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.4/streamx-0.5.4-linux-aarch64.zip"
    sha256 "d3e2bbd44fd3d34fcbb501501eb82889f60583b43152fb5c6385b1a422e861df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.4/streamx-0.5.4-linux-x86_64.zip"
    sha256 "9b5f36a3be6638a1d8a62b61221be7e2e98864c4d76346e08baecc538ee93799"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.4/streamx-0.5.4-macos-aarch64.zip"
    sha256 "008bc56756157abbd06dfa8c0fc2ed1ca13cedf0d86dcc9994c701411eabdd6b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.4/streamx-0.5.4-macos-x86_64.zip"
    sha256 "28bfe5a5097fe2206b8bd00016ee9c4e5105dc4f5e5aafd34e53e48c44f71ec7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.4", output
  end
end

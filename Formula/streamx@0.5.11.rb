# Generated with JReleaser 1.22.0 at 2026-03-11T13:29:21.251269351Z

class StreamxAT0511 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.11"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.11/streamx-0.5.11-linux-aarch64.zip"
    sha256 "309b516c1884868d9c19deb09f5c9df9a258b258f8bc365d559a9bb3947bf371"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.11/streamx-0.5.11-linux-x86_64.zip"
    sha256 "9049605cdf0ad24d05863e6fbb39df422ef950315436a343252facff14ba209a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.11/streamx-0.5.11-macos-aarch64.zip"
    sha256 "1bfa7ef66acce2f43040f127f0220bd013f4ae72e1f72d115100a8bb3eaa8926"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.11/streamx-0.5.11-macos-x86_64.zip"
    sha256 "448a12d509a7774a5ca0d489740d9ad0d000ab5e5150a2098ac6b34974bedead"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.11", output
  end
end

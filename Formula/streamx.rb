# Generated with JReleaser 1.22.0 at 2026-03-06T10:36:47.258073075Z
require_relative "../download_strategy"

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.43"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.43/streamx-0.0.43-linux-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d685ed454079d3ecdfac4ae9b76c1b75d8cff62354bcd8814ff2cd7726a94a3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.43/streamx-0.0.43-linux-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ad6087c5c889b0bba214104e8961712cc4d6ce51482c6047e4ab531b199f647b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.43/streamx-0.0.43-macos-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "24297b26a5835cba1f3b3dc1be779c6ab635cb5b9a3fecf4e5a3368ec86a5eeb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.43/streamx-0.0.43-macos-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "dd8d1c2680421f47f77798c020ff02fa8558b6f36ce7405eae4c42a9b86967d5"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.43", output
  end
end

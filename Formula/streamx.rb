# Generated with JReleaser 1.22.0 at 2026-03-06T10:16:32.505468435Z
require_relative "../download_strategy"

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.42"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.42/streamx-0.0.42-linux-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ee57eaa0cecee64377e6170e094bc8ce6acb5ddad0cdd5c7faa93aefbae984c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.42/streamx-0.0.42-linux-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "16a63b4916c61c3bb03619bc3ec25ab36b3335033c5b482c14c8fb6e405da785"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.42/streamx-0.0.42-macos-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d310dea7cb0f75206a65453aed9572c1c174397ac6cbfdd9c6aca2d910fae562"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.42/streamx-0.0.42-macos-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "109cd5008a18e4daf7e783db199a1e15a925de6f74af2c3ce32623382404d4c0"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.42", output
  end
end

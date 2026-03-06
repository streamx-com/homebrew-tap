# Generated with JReleaser 1.22.0 at 2026-03-06T10:16:41.600027497Z
require_relative "../download_strategy"

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.41"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.41/streamx-0.0.41-linux-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "c4812bb156da1e73904d7d6a047e675e7e53e79219c427feba0ca911da7c47fe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.41/streamx-0.0.41-linux-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "a9f49b98ad32cc7318c2480a509b8b653d94d8a26711af7a876b849e8b484912"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.41/streamx-0.0.41-macos-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0f1be6b5f71aa8ef41968eec5bebdba4e994203055b631b44c7528f04b25c220"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.41/streamx-0.0.41-macos-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "426b642ebed3d91cb2c190bb7e47852eb2570f92fd045d5972081bda97d178f7"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.41", output
  end
end

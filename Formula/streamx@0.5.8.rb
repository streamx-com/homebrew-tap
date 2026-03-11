# Generated with JReleaser 1.22.0 at 2026-03-11T08:23:14.534312517Z

class StreamxAT058 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.5.8"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.8/streamx-0.5.8-linux-aarch64.zip"
    sha256 "343b4bdd5abb20e5022d6096dec2851dc10b9b00650fc2395d2cc31a50cfab95"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.8/streamx-0.5.8-linux-x86_64.zip"
    sha256 "fa6dd614203fc8167d3d7f68fef36392639bb5efcfaea51f4dd797694c4f2dc3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.8/streamx-0.5.8-macos-aarch64.zip"
    sha256 "0fed4c63b69607252610b7dd003ad315e274b8815d5b6f7431b2eaeed0fcaf97"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.5.8/streamx-0.5.8-macos-x86_64.zip"
    sha256 "51c93039c07da83ce14b07c0939ec636733a537c8971c63155e25c3780f5e639"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.5.8", output
  end
end

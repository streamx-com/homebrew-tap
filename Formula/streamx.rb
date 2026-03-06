# Generated with JReleaser 1.22.0 at 2026-03-06T10:40:22.191161088Z
require_relative "../download_strategy"

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.44-rc.1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.44-rc.1/streamx-0.0.44-rc.1-linux-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "bc5352cbfb91cf9da91635ad8b1d2661d3b023e2244eb2f4a9e48e206fc42f0b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.44-rc.1/streamx-0.0.44-rc.1-linux-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "f84dd2ecccce2c85a557d3ceec2d91173c18932950b3a53fd558151e374c6471"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.44-rc.1/streamx-0.0.44-rc.1-macos-aarch64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "af35945652f61231b6c3e08d4a6e2bfee94719e13c696ffb4c79d0fb342ade8d"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.44-rc.1/streamx-0.0.44-rc.1-macos-x86_64.zip", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d32da8b5fdfa58ebaba47f24334d84998a6a13f60337dff9ecee11212e737a9b"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.44-rc.1", output
  end
end

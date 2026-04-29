# Generated with JReleaser 1.22.0 at 2026-04-29T15:54:28.376530447Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "2.0.3"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.3/streamx-2.0.3-linux-aarch64.zip"
    sha256 "266f8a610c76b628f894ee66d2376c526c515f6492962aa98428781ae83c9708"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.3/streamx-2.0.3-linux-x86_64.zip"
    sha256 "3b28080f84fc3c0c07a5eb2d0c311dcd398f0b4da3b908e897a8fd8cbfb13680"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.3/streamx-2.0.3-macos-aarch64.zip"
    sha256 "83971315bcfa746cf42429a654483e516144b073473178503405f7b1ff8e2b31"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.3/streamx-2.0.3-macos-x86_64.zip"
    sha256 "a2478f4566cee1fcb6c6edf59415c33cdb94b4151e47ccd9bf6ce283bf2b6948"
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
    assert_match "2.0.3", output
  end
end

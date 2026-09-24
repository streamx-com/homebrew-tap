# Generated with JReleaser 1.22.0 at 2026-09-24T12:24:56.642320188Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.1/streamx-jar-2.1.1.zip"
  version "2.1.1"
  sha256 "c13dd873509213dfdea670e58393779bea416cef0dfaa2a04d217b42aa60f5dc"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")

    # Install pre-generated shell completions
    bash_completion.install libexec/"share/completions/streamx.bash" => "streamx"
    zsh_completion.install libexec/"share/completions/_streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.1.1", output
  end
end

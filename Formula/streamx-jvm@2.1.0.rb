# Generated with JReleaser 1.22.0 at 2026-09-24T07:42:59.664283112Z

class StreamxJvmAT210 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.1.0/streamx-jar-2.1.0.zip"
  version "2.1.0"
  sha256 "d14286c0bae1329152c2d8a8a14858da648c39d3ce01ff978f704d7db2f66830"
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
    assert_match "2.1.0", output
  end
end

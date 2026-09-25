# Generated with JReleaser 1.22.0 at 2026-09-25T07:39:37.978918326Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.3.0/streamx-jar-2.3.0.zip"
  version "2.3.0"
  sha256 "72f985bc68a479bc4292e52c59b088991a957bf9cc195c4647e6f31fe6c9a509"
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
    assert_match "2.3.0", output
  end
end

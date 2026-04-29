# Generated with JReleaser 1.22.0 at 2026-04-29T15:54:28.376530447Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.3/streamx-jar-2.0.3.zip"
  version "2.0.3"
  sha256 "4ca5541637ca4cbd3c69f5ba67b1932747a15f318bf25baa6ebde034b18fce17"
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
    assert_match "2.0.3", output
  end
end

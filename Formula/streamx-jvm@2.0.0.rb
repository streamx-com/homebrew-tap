# Generated with JReleaser 1.22.0 at 2026-04-01T07:42:27.766236049Z

class StreamxJvmAT200 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.0/streamx-jar-2.0.0.zip"
  version "2.0.0"
  sha256 "af2b4381d11823582ab911d0d496e2b71d52725a7bed8eee53f26fbe9a639d69"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.0", output
  end
end

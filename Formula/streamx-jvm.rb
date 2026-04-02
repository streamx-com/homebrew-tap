# Generated with JReleaser 1.22.0 at 2026-04-02T10:09:27.564736743Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.2/streamx-jar-2.0.2.zip"
  version "2.0.2"
  sha256 "c50d7eb505e160c9c536d975480a868a78df68bd084c9bd2b8efc273c143f721"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.2", output
  end
end

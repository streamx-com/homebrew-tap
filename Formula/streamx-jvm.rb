# Generated with JReleaser 1.22.0 at 2026-04-01T12:46:50.625560486Z

class StreamxJvm < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  url "https://github.com/streamx-com/streamx-cli/releases/download/2.0.1/streamx-jar-2.0.1.zip"
  version "2.0.1"
  sha256 "847659ff76dcf725cf89fc902b71a7dca7acf19d1041b187c2aa99316edada9f"
  license "LicenseRef-StreamX"

  depends_on "openjdk@21"

  def install
    libexec.install Dir["*"]
    (bin/"streamx").write_env_script libexec/"bin/streamx",
      Language::Java.overridable_java_home_env("21")
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "2.0.1", output
  end
end

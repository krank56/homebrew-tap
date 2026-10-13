class JenklodBatman < Formula
  desc "Jenkins TUI: watch jobs, search all folders and run build macros from a terminal"
  homepage "https://github.com/krank56/jenklod-batman"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.4.0/jenklod-batman_v0.4.0_darwin_arm64.tar.gz"
      sha256 "b80a2592f106eaab7769f52283cbaebe6c9041356eab83bea73976ee0510fd7f"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.4.0/jenklod-batman_v0.4.0_darwin_amd64.tar.gz"
      sha256 "f81a9a82cb7acf6d4484242721d766fe50f2abab6101fb7dc9937238be37ec1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.4.0/jenklod-batman_v0.4.0_linux_arm64.tar.gz"
      sha256 "ef0ce17dcfcba39d3091da7950e421741a0406058664aa377ac83e13c9332ffa"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.4.0/jenklod-batman_v0.4.0_linux_amd64.tar.gz"
      sha256 "849610589605d21424211a95c5a0011c1226c99cedb6573a2b322209e3024a6b"
    end
  end

  def install
    bin.install "jenklod-batman"
    bin.install_symlink "jenklod-batman" => "jk"
  end

  test do
    assert_match "jenklod-batman v#{version}", shell_output("#{bin}/jenklod-batman --version")
    assert_match "jenklod-batman v#{version}", shell_output("#{bin}/jk --version")
  end
end

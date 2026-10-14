class JenklodBatman < Formula
  desc "Jenkins TUI: watch jobs, search all folders and run build macros from a terminal"
  homepage "https://github.com/krank56/jenklod-batman"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.5.0/jenklod-batman_v0.5.0_darwin_arm64.tar.gz"
      sha256 "87982d02fc729d46b12db990fe41ae4241f2e15aeda2ba03efb98feb44b640da"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.5.0/jenklod-batman_v0.5.0_darwin_amd64.tar.gz"
      sha256 "60ca4c8c6cb44e9842d350024d8679b3eec2f00bc816f868ed51449e0fc51ada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.5.0/jenklod-batman_v0.5.0_linux_arm64.tar.gz"
      sha256 "37e885cfb5c754708be05b0fdee7d521c0d98744d5931e6ea030ff03aa0ed613"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.5.0/jenklod-batman_v0.5.0_linux_amd64.tar.gz"
      sha256 "f563913aa654220c208310c8100e38e21b1b41f198c01aad78b7522b2f0e57b7"
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

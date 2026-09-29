class JenklodBatman < Formula
  desc "Jenkins TUI: watch jobs, search all folders and run build macros from a terminal"
  homepage "https://github.com/krank56/jenklod-batman"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.3.0/jenklod-batman_v0.3.0_darwin_arm64.tar.gz"
      sha256 "3c980a61105b19cf6ab58ede29044d29a9764d242c987cc545437df3f0600c5f"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.3.0/jenklod-batman_v0.3.0_darwin_amd64.tar.gz"
      sha256 "85618d1b465790ce47d8aa9b913bb91dd4d1f8ed60c21ebd84427fcac64c3b3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.3.0/jenklod-batman_v0.3.0_linux_arm64.tar.gz"
      sha256 "c026ac80e510da3186846e49d397043b80b50920e89884d275b3d4949a6ea3c1"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v0.3.0/jenklod-batman_v0.3.0_linux_amd64.tar.gz"
      sha256 "a4fc11fea672b008e83702ce243e6f4a368181ab74f2036aa2c707fd3ddccf73"
    end
  end

  def install
    bin.install "jenklod-batman"
  end

  test do
    assert_match "jenklod-batman v#{version}", shell_output("#{bin}/jenklod-batman --version")
  end
end

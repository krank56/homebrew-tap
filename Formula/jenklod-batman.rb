class JenklodBatman < Formula
  desc "Terminal UI for Jenkins: watched jobs, cross-folder search and macros"
  homepage "https://github.com/krank56/jenklod-batman"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v#{version}/jenklod-batman_v#{version}_darwin_arm64.tar.gz"
      sha256 "7535ad37b0f2df0d2114f6ee1c8fb1f7193a43a99be5b6e09702996e996655fb"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v#{version}/jenklod-batman_v#{version}_darwin_amd64.tar.gz"
      sha256 "4eb1f07598ea4a6a132e5475021db685196def39284591bb9c865a65ee1b9057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/krank56/jenklod-batman/releases/download/v#{version}/jenklod-batman_v#{version}_linux_arm64.tar.gz"
      sha256 "a0dfc65c2d9ea18764812de3a905f2c11dbcec6d224220f33517350c1c1844d2"
    end
    on_intel do
      url "https://github.com/krank56/jenklod-batman/releases/download/v#{version}/jenklod-batman_v#{version}_linux_amd64.tar.gz"
      sha256 "2c479ec67be5d76b61ba87bd34455d6f9709713da34e4b6fd4cab10b0e963351"
    end
  end

  def install
    bin.install "jenklod-batman"
  end

  test do
    assert_match "jenklod-batman v#{version}", shell_output("#{bin}/jenklod-batman --version")
  end
end

class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.2.0/omni-cli-darwin-amd64.tar.gz"
      sha256 "abed32fbc736c20c3be43d0520cdcc54bf640a527d916dca7f1ceb8fa46c44a1"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.2.0/omni-cli-darwin-arm64.tar.gz"
      sha256 "48a813d0d3d11526f1c4f87839ed9a9084e2a643eefd9a0d409af0b735b18cbc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.2.0/omni-cli-linux-amd64.tar.gz"
      sha256 "bcc76f930ff64f2ee67a0eed7808d78d450e55a654ea71d2464003579814b9fe"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.2.0/omni-cli-linux-arm64.tar.gz"
      sha256 "88a0b8a84d76f33b285307287e395e4e65cc6d4e48e8ab9c996494c84729346d"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

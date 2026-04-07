class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.2/omni-cli-darwin-amd64.tar.gz"
      sha256 "480f92665d1a55686d0505395191368c4d5f3a4b9fa65a1fea5eb9d162f3de06"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.2/omni-cli-darwin-arm64.tar.gz"
      sha256 "f8911f29ca4edcaaed90965823ffa82fa15a917e6468492061ff150a4d6a0aff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.2/omni-cli-linux-amd64.tar.gz"
      sha256 "f3c3b79780a79df78427fac4360ad1b276f69a39a520a6c3d616a63a3497ebad"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.2/omni-cli-linux-arm64.tar.gz"
      sha256 "e4284fff60de66a034075def888555d135ee576ff06e80f6caebd777f3ba37a7"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

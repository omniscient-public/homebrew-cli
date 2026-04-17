class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.3/omni-cli-darwin-amd64.tar.gz"
      sha256 "d84a0b261e39e19f9e8e24ec36fb3b03347e827241beae79209596639d7a3b20"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.3/omni-cli-darwin-arm64.tar.gz"
      sha256 "52eb1be32bce6d6e8008cb0e0f4daea7984a89e73cccc59a892d04f9dac83554"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.3/omni-cli-linux-amd64.tar.gz"
      sha256 "62e748fe6bd477b1c2060f913a1bb6c9e9fa2db4d18f3bf8f433e3190c5998fb"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.3/omni-cli-linux-arm64.tar.gz"
      sha256 "bce27270b89e00ec4e4eff8c0ceae050321eff1d5bd84eacfff7c3a458414fba"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

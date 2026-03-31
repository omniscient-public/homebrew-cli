class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.0/omni-cli-darwin-amd64.tar.gz"
      sha256 "5c537afb29071985a8b1b0034d6481f6eeb8f5911811575d438fcd9237cc76a1"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.0/omni-cli-darwin-arm64.tar.gz"
      sha256 "7898d6385915b364f0fb2794df9befb7679295e59162339e8b665f9cd216e940"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.0/omni-cli-linux-amd64.tar.gz"
      sha256 "acb969bdff3a86c147be3426713bc7345f4f078fa554fd27fbf80a0fe52bdfb2"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.0/omni-cli-linux-arm64.tar.gz"
      sha256 "1ddaf969cd072727e38cead3a5c1e848d4471337f3263dc0dad359452dc913f9"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

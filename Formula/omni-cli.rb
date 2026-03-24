class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.1.0/omni-cli-darwin-amd64.tar.gz"
      sha256 "3fa17b54e4101a8af348aba4b7a44e498422b132c086f658bfc69aa4f41acff9"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.1.0/omni-cli-darwin-arm64.tar.gz"
      sha256 "e229a650eb24fb0cf99f9793d00949eb9e4236eed220030f63cd907b51601914"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.1.0/omni-cli-linux-amd64.tar.gz"
      sha256 "b942653e3fa862c0b542ed14cdab3e08d480de79034cfe213b3ebc19c3328fdb"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.1.0/omni-cli-linux-arm64.tar.gz"
      sha256 "279ff2e065759a93f1e006bf095392b17da091723c75d354d73d003d9147d74d"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

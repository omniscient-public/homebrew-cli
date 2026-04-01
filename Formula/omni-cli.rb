class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.1/omni-cli-darwin-amd64.tar.gz"
      sha256 "f740779b74bd24e923079443e6e56d0d11a7fd9bd46378d081db9a61cc25feca"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.1/omni-cli-darwin-arm64.tar.gz"
      sha256 "9d20fda170fa922cf6894476eabfb2da7d27cb4cfc1c065464e6b34243362675"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.1/omni-cli-linux-amd64.tar.gz"
      sha256 "1bfcc07eeab66131ed5acc4267dac078b66b473caf0b7f41a959d30f063ba0cd"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.3.1/omni-cli-linux-arm64.tar.gz"
      sha256 "3d034841ccd32c6c914b389809229e414a988fcfa1cf954cfcd89798ff484e96"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

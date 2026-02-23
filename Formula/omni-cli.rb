class OmniCli < Formula
  desc "Omniscient Configuration Management CLI"
  homepage "https://github.com/omniscient-public/binaries"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.0.0/omni-cli-darwin-amd64.tar.gz"
      sha256 "64b22866e2a4a36e390d1e95137d07682d2aaf67d2ad53b8af3bfe4aa70f95f6"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.0.0/omni-cli-darwin-arm64.tar.gz"
      sha256 "aae9c36f2b43416a33ccbef1b2c8ea7149adff048525b2894d1ef84aeea8a9ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.0.0/omni-cli-linux-amd64.tar.gz"
      sha256 "a5bb08f0eb68d7c900b5e91efbd876d2ae6ca8b158e168b0f8d977e619735173"
    end

    on_arm do
      url "https://github.com/omniscient-public/binaries/releases/download/@omniscient-ai/cli@1.0.0/omni-cli-linux-arm64.tar.gz"
      sha256 "80726c10551e2520b80d4b6813bbdbe8fdc1585afc3069dddd78486ba31ea50b"
    end
  end

  def install
    bin.install "omni"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end

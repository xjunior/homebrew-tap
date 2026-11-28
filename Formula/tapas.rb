class Tapas < Formula
  desc "Pulls a sample out of a MySQL database into a SQL file, keeping every reference intact"
  homepage "https://github.com/xjunior/tapas"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v1.0.0/tapas-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "d4989251df1c897ad69b81d37a6cece0e8db869902bf5b0c861c4f36771bf6a7"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v1.0.0/tapas-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ad01e7cc1d44bbdb25d44e994e518774c820d829fa1b466910a3b59e595c9a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v1.0.0/tapas-v1.0.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f130e28ccc005c9161c67c584767d340beba829a666411b9f4abad0a849d1ead"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v1.0.0/tapas-v1.0.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5a47c37bb10f194019a5746b82b5ba3264e96ce12acd6f36e5c0fce134198ce"
    end
  end

  def install
    bin.install "tapas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tapas --version")
  end
end

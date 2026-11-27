class Tapas < Formula
  desc "Pulls a sample out of a MySQL database into a SQL file, keeping every reference intact"
  homepage "https://github.com/xjunior/tapas"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.2.0/tapas-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "7f7285a6b9f25732fed6884319022b68e8478ce0210658c276813ec3abba581c"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.2.0/tapas-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "7c8f005f7df9c9d1ef62ed6ebdc989a060926ab62393c3426a5dbd4b5bf66605"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.2.0/tapas-v0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a1d888dd7fa7a3f4061469b0ee92778d20aa2c5f6b848b0359791cdb74578021"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.2.0/tapas-v0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3132201cb059091f5e58d360078ec32b8461d4b983a7f9c8886ed3b4984082d"
    end
  end

  def install
    bin.install "tapas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tapas --version")
  end
end

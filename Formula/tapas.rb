class Tapas < Formula
  desc "Pulls a sample out of a MySQL database into a SQL file, keeping every reference intact"
  homepage "https://github.com/xjunior/tapas"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ded0bbd2ea6c0d0785b7dbb06db6c0860a13100cf328bdcee4d941a8f69ad841"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "4e7f77e4d15f249936ecbc1c38e6d30cc6622dcb26abe878b9ffa89c875448c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "863cd22898ca8aae4c95d6cc14dc744ca2b60d5143d317e608ad1f038dfb08c7"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ae6d60c8e0a33db1ffceca14a6349d2d8150d002bcbaaa2f3682f6317169e42"
    end
  end

  def install
    bin.install "tapas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tapas --version")
  end
end

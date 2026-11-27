class Tapas < Formula
  desc "Pulls a sample out of a MySQL database into a SQL file, keeping every reference intact"
  homepage "https://github.com/xjunior/tapas"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "890312be7dfa854b9f33a831a3dd1ea8ac31d4289048c2b385ae907d3b8ec2ff"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0a733976a63d75377f6e39ccedc9d6a9a4ee67ff7fd4c46e440d4f0aa782ce1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0e5985bfcf5d39cde00d12e99a5b6fc672c13efdac3c81cba359e218d9b54c46"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.1.0/tapas-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f06d0e7c3fde13a16bb3d67f8e05e25cf5f6b3495d30e116bef1a6f77fa4f62"
    end
  end

  def install
    bin.install "tapas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tapas --version")
  end
end

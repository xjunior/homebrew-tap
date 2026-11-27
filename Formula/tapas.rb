class Tapas < Formula
  desc "Pulls a sample out of a MySQL database into a SQL file, keeping every reference intact"
  homepage "https://github.com/xjunior/tapas"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.3.0/tapas-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c8756644a14019baf629e41387fb2b24cf2c66562fe59d7460062794d6faa1bb"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.3.0/tapas-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "ec74c70e2d6302493c617556ba08392e7bc22c60204eecc2ad62f8094289dfd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/xjunior/tapas/releases/download/v0.3.0/tapas-v0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34e75b97481d95a80bc2cf505d4c7570053df6a038b74e8e4a37ef34e658cf7c"
    end
    on_intel do
      url "https://github.com/xjunior/tapas/releases/download/v0.3.0/tapas-v0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6af46ee1e1dc015f8140d484131ccffd8ff901d108bd878e8220670697becf33"
    end
  end

  def install
    bin.install "tapas"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tapas --version")
  end
end

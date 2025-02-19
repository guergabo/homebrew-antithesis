# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Antithesis < Formula
  desc "A platform for building the impossible."
  homepage "https://antithesis.com"
  version "0.0.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.23/antithesis_0.0.23_darwin_amd64.tar.gz"
      sha256 "b48c33da88c8fdc2449bc379019a921e497b2273e11a229c7c56d407ea1fa6db"

      def install
        bin.install "antithesis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.23/antithesis_0.0.23_darwin_arm64.tar.gz"
      sha256 "38b585f8f5fe5784aa392ef8f7f2f83fb5628c9e7e071b000034080dc67ae268"

      def install
        bin.install "antithesis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.23/antithesis_0.0.23_linux_amd64.tar.gz"
        sha256 "b50f11fa0549431d2f954d1261c10e373c5668830bbdbc48f8a43791820dcfd4"

        def install
          bin.install "antithesis"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.23/antithesis_0.0.23_linux_arm64.tar.gz"
        sha256 "8812033c75bc3c2532437d5463b160ba3c2b036681a8647cf0d452cc9e631f48"

        def install
          bin.install "antithesis"
        end
      end
    end
  end

  test do
    system "#{bin}/antithesis", "--version"
  end
end

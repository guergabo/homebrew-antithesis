# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Antithesis < Formula
  desc "A platform for building the impossible."
  homepage "https://antithesis.com"
  version "0.0.15"
  license "Apache-2.0"

  bottle do
    root_url "https://github.com/guergabo/homebrew-antithesis/releases/download/antithesis-0.0.15"
    sha256 cellar: :any_skip_relocation, ventura:      "1eec28e57da1925131922b979e78b1cb5a9d6a713a4b4c3c2afb9f791f715f56"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e3cf587be57e1da70ede51d10a392faec0f6329c14bbd924583c2b71a1c81b74"
  end

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.15/antithesis_0.0.15_darwin_amd64.tar.gz"
      sha256 "e3a340c027889e238abb825c2f5f706018c4b5b9d477b524f5ee3ecb964da11a"

      def install
        bin.install "antithesis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.15/antithesis_0.0.15_darwin_arm64.tar.gz"
      sha256 "96f4a65166433543c4f846dfd097a3e75c8af91c2bb1390fe3c8d6dc85b62630"

      def install
        bin.install "antithesis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.15/antithesis_0.0.15_linux_amd64.tar.gz"
        sha256 "c735717e232dfc65a76436a046f15df320ef3c239ee4d5924936dc46824ca290"

        def install
          bin.install "antithesis"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.15/antithesis_0.0.15_linux_arm64.tar.gz"
        sha256 "94d0d7d77752e7d70a35ce6b71c29aa3602523959044695a29044005a55107f1"

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

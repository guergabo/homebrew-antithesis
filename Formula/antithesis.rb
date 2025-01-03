# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Antithesis < Formula
  desc "A platform for building the impossible."
  homepage "https://antithesis.com"
  version "0.0.22"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.22/antithesis_0.0.22_darwin_amd64.tar.gz"
      sha256 "607b7cf9cb7259af99155bd6580f151fd8da3af6c7b702f429c1cb86c5740fe6"

      def install
        bin.install "antithesis"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.22/antithesis_0.0.22_darwin_arm64.tar.gz"
      sha256 "3646a1bce43727ba8d550591e8f69b60a387e2a443f52ee372632c34a730d237"

      def install
        bin.install "antithesis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.22/antithesis_0.0.22_linux_amd64.tar.gz"
        sha256 "87981a9c4fd829b06904e2ee74acab4ce0c0502214a9ba5caeef569cf7fdbdfd"

        def install
          bin.install "antithesis"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guergabo/antithesis-cli/releases/download/v0.0.22/antithesis_0.0.22_linux_arm64.tar.gz"
        sha256 "63a430cd02fd68bb11cfdb0f82d5be27b4ad912b3167723ebcec782badac1ccf"

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

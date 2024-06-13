# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CidrEncoder < Formula
  desc "CLI for time efficiently encoding cidr blocks to find if an IP exists in a range"
  homepage "https://jmoney.dev/cidr-encoder"
  version "0.5"
  license "Apache 2.0"
  depends_on :macos

  on_arm do
    url "https://github.com/jmoney/cidr-encoder/releases/download/v0.5/tokenizer_cli_0.5_darwin_arm64.tar.gz"
    sha256 "be02c68146d6d22db27de96e1d96953fe1a8ee5d532e42d712e44d9d67cd0a0b"

    def install
      bin.install "cidr-encoder"
    end
  end

  test do
    system "#{bin}/cidr-encoder -h"
  end
end

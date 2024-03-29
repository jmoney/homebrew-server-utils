# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EchoServer < Formula
  desc "Server that echos a request"
  homepage "https://jmoney.dev/echo-server"
  version "0.5"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jmoney/echo-server/releases/download/v0.5/echo-server_0.5_darwin_arm64.tar.gz"
      sha256 "591dda3ca3ea6e7ce2c3b3a1021889c5dcd2ed380425f234eedd0c7ecca4277b"

      def install
        bin.install "echo-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/echo-server/releases/download/v0.5/echo-server_0.5_darwin_amd64.tar.gz"
      sha256 "28c53eed4126de29037968a8f3dbec3c3c0ff27e63ce9a9bfa47ebcc3f19b3fa"

      def install
        bin.install "echo-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmoney/echo-server/releases/download/v0.5/echo-server_0.5_linux_arm64.tar.gz"
      sha256 "79d5d8e756d5dc354864ccb039acd5cbf8e4e5e9b85e51b43dd395ddd7fbfd4d"

      def install
        bin.install "echo-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/echo-server/releases/download/v0.5/echo-server_0.5_linux_amd64.tar.gz"
      sha256 "e52054c1379c574653d679139a356935bf0d23ca8f04b89f94894dbcdb639960"

      def install
        bin.install "echo-server"
      end
    end
  end

  test do
    system "#{bin}/echo-server -h"
  end
end

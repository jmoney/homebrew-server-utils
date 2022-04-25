# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ServerTlsMonitor < Formula
  desc "Reports tls certificate metrics"
  homepage "https://jmoney.dev/server-tls-monitor"
  version "0.1.13"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.1.13/server-tls-monitor_0.1.13_Darwin_arm64.tar.gz"
      sha256 "4a21ee1a5c885147ae76ace040b68815f04b05ed1f8641be6333aec18d09eea1"

      def install
        bin.install "server-tls-monitor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.1.13/server-tls-monitor_0.1.13_Darwin_x86_64.tar.gz"
      sha256 "37e9651399037e65837148c8a82017f250e3643972928cd8adbdde5e37840545"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.1.13/server-tls-monitor_0.1.13_Linux_arm64.tar.gz"
      sha256 "a7d3aa8ad441feca28ec5e23bf8993eb3324f1bd18efbd2e0baa527d2a2c5a75"

      def install
        bin.install "server-tls-monitor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jmoney/server-tls-monitor/releases/download/v0.1.13/server-tls-monitor_0.1.13_Linux_x86_64.tar.gz"
      sha256 "1b0584ed3fb81f758c7f28aff8957e42ae9d49ce27c7e9f74a42691bfcb96ef3"

      def install
        bin.install "server-tls-monitor"
      end
    end
  end

  test do
    system "#{bin}/server-tls-monitor -h"
  end
end

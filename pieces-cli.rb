class PiecesCli < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/pieces-cli-production-releases/pieces-cli-0.0.1.tar.gz"
  sha256 "9b371493ffbc0b45f1584b139e7c806c337e5de6bc9e325129b47192f13164ba"
  license "MIT"

  def install
		bin.install "pieces"
		bin.install Dir["bin"]
		prefix.install "README.md"
  end

end

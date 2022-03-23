class PiecesCli < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/pieces-cli-production-releases/pieces-cli-0.0.2.tar.gz"
  sha256 "85ad00287431d08f37ba98f04ebac93777ae9f6bb1586fe197747bdb6ee66d40"
  license "MIT"

  def install
		bin.install "pieces-linux" => "pieces"
		prefix.install "README.md"
  end

end

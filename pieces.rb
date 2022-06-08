class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-1.0.1.tar.gz"
  sha256 "8fc900caaa47610fca03f266ad9a9e265751a243cbc273c465b6e6b89b78bfdd"
  license ""

  on_linux do
    depends_on "xsel"
  end

  def install
	if OS.linux?
		bin.install "pieces-linux" => "pieces"
	else
		bin.install "pieces-mac" => "pieces"
	end
  end
end

class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-0.1.0.tar.gz"
  sha256 "1d1fa726d3e90aa96eca69a0ec75f1f3eb5a45319464f91e250e312dfa7c9b92"
  license ""

  depends_on "xsel" => :recommended

  def install
	if OS.linux?
		bin.install "pieces-linux" => "pieces"
	else
		bin.install "pieces-mac" => "pieces"
	end
  end
end

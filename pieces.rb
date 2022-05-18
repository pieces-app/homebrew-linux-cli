class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-0.1.5.tar.gz"
  sha256 "cc1f254ba927bd5acf1ca0a643f71f04c470334e230803eb47ea3226f7789571"
  license ""

  def install
	if OS.linux?
	    depends_on "xsel" => :recommended
		bin.install "pieces-linux" => "pieces"
	else
		bin.install "pieces-mac" => "pieces"
	end
  end
end

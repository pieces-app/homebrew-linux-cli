class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-0.1.2.tar.gz"
  sha256 "bc3055a6bc80374ce3c374435e260caba700e92b2ca761841985b26d0fe9cccb"
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

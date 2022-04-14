class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-0.0.10.tar.gz"
  sha256 "1f731e9077c9f1e9dc8e331da64921623e1f5b058339ed6dfd9ef99d9e13c10e"
  license ""

  depends_on "xsel" => :recommended

  def install
	if OS.linux?
		bin.install "pieces-linux" => "pieces"
	else
		bin.install "pieces-mac" => "pieces"
	end

	prefix.install "README.md"
  end
end

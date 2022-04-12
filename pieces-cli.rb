class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/pieces-cli-production-releases/pieces-0.0.5.tar.gz"
  sha256 "1627de9c4f3c9c5649c4a75ff3215dc234c4bdf92d8c27cc72f978416ca73416"
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

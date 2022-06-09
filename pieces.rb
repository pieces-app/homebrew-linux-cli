class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-1.1.0.tar.gz"
  sha256 "9e143f95c22be62b4c462de0827e5011e31f5a9da520b1c47157ed6c86efce50"
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

class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-1.0.2.tar.gz"
  sha256 "2a5245a0eca24dbd7d2f8c4d699ff93364eee4f2b94e7c4250e1c2581a84429e"
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

class Pieces < Formula
  desc "A command line application for Pieces"
  homepage "https://code.pieces.app/"
  url "https://storage.googleapis.com/app-releases-59612ba/pieces-cli/release/pieces-0.1.4.tar.gz"
  sha256 "4d777367b9655feb1903f5aa0d18b18658652c4e72eb7637aed3c865bbd78c7f"
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

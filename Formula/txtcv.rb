class Txtcv < Formula
  desc "Command-line interface for txtcv"
  homepage "https://github.com/txtcv/cli"
  url "https://github.com/txtcv/cli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "9c908ce04fb314c52a1e680e741d1c40638a037891b570700dea8f0ab74cf6f0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^txtcv/, shell_output("#{bin}/txtcv --version"))
  end
end

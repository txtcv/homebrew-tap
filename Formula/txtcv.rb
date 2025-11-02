class Txtcv < Formula
  desc "Command-line interface for txtcv"
  homepage "https://github.com/txtcv/cli"
  url "https://github.com/txtcv/cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c5ece85f6ad9a97543879c6ce04eae898c8aa350be4798bf89e563eadf347e9b"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^txtcv/, shell_output("#{bin}/txtcv --version"))
  end
end

class Txtcv < Formula
  desc "Command-line interface for txtcv"
  homepage "https://github.com/txtcv/cli"
  url "https://github.com/txtcv/cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6ef67bc69778588d9b6751768c505d565fdbe92b15023bea26e3ef1d57a5a456"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match /^txtcv /, shell_output("#{bin}/txtcv --version")
  end
end

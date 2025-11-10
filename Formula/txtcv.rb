class Txtcv < Formula
  desc "Command-line interface for txtcv"
  homepage "https://github.com/txtcv/cli"
  url "https://github.com/txtcv/cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b10b507f136ea97fa3b2db5b299247ecf502adaed5fdcf9155d1964df6e2013e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match(/^txtcv/, shell_output("#{bin}/txtcv --version"))
  end
end

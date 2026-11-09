class Txtcv < Formula
  desc "Plaintext CV builder for software developers"
  homepage "https://github.com/txtcv/txtcv"
  head "https://github.com/txtcv/txtcv.git", branch: "main"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args, "."
  end

  test do
    system bin/"txtcv", "init"
    assert_path_exists testpath/"cv.yaml"
    assert_match "cv.yaml is valid JSON Resume.", shell_output("#{bin}/txtcv validate")

    (testpath/"invalid.json").write('{"basics":"invalid"}')
    assert_match "error:", shell_output("#{bin}/txtcv validate invalid.json 2>&1", 1)
  end
end

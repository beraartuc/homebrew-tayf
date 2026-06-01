class Tayf < Formula
  desc "PTY-based, terminal-agnostic, regex-driven output colorizer"
  homepage "https://github.com/beraartuc/tayf"
  url "https://static.crates.io/crates/tayf/tayf-0.10.0.crate"
  sha256 "5c93e352b919d3956158900e33278525d9d7a184d84f11fba96edc03aea22a3c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tayf --version")
  end
end

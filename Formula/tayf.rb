class Tayf < Formula
  desc "PTY-based, terminal-agnostic, regex-driven output colorizer"
  homepage "https://github.com/beraartuc/tayf"
  url "https://static.crates.io/crates/tayf/tayf-0.12.3.crate"
  sha256 "613ce08fc91d104fed9d24d5c3c74a7903376be983410d3fdca4f8cc038375a7"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tayf --version")
  end
end

class Tayf < Formula
  desc "PTY-based, terminal-agnostic, regex-driven output colorizer"
  homepage "https://github.com/beraartuc/tayf"
  url "https://static.crates.io/crates/tayf/tayf-0.12.1.crate"
  sha256 "0d0ee7178da0fc0c335e03609a9e01e8c85d011424485f3b3181c793b0f9c882"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tayf --version")
  end
end

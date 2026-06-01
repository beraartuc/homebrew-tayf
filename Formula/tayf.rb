class Tayf < Formula
  desc "PTY-based, terminal-agnostic, regex-driven output colorizer"
  homepage "https://github.com/beraartuc/tayf"
  url "https://static.crates.io/crates/tayf/tayf-0.11.0.crate"
  sha256 "0162b89e2dbcf8d2b379cfaaffec1335952c527f781e5a08c5b9c51ef9cbea5c"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tayf --version")
  end
end

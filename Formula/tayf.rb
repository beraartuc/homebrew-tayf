class Tayf < Formula
  desc "PTY-based, terminal-agnostic, regex-driven output colorizer"
  homepage "https://github.com/beraartuc/tayf"
  url "https://static.crates.io/crates/tayf/tayf-0.12.0.crate"
  sha256 "51e34f30adb204548b3f302d7cc6cf60edf92a714542dfbd83a25a9aba515906"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tayf --version")
  end
end

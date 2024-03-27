class Cllm < Formula
  desc "Empower your CLI experience with a command search tool driven by LLM magic!"
  homepage "https://github.com/dev-backpack/cllm"
  url "https://github.com/dev-backpack/cllm/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "04c87d7a9f3e0b6067759e689d7234ae82b7d2cede4ffdb60e585fb5da206c38"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end

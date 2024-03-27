class Cllm < Formula
  desc "Empower your CLI experience with a command search tool driven by LLM magic!"
  homepage "https://github.com/dev-backpack/cllm"
  url "https://github.com/dev-backpack/cllm/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "4f9a45b231542e31d85d46ea938910d240969555acb8cd1700a1f10751e43aab"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end

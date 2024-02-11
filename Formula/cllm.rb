class Cllm < Formula
  desc "Empower your CLI experience with a command search tool driven by LLM magic!" 
  homepage "https://github.com/dev-backpack/cllm" 
  url "https://github.com/dev-backpack/cllm/releases/download/v0.1.1/cllm-0.1.1.tar.gz" 
  sha256 "718c29878193127ddcf5f1d73f6f47ee261dba219d1de437aa61f6a374c449cc"
  version "0.1.1"
  license "MIT"

  depends_on "poetry" => :build
  depends_on "python@3.12"

  def python3
    "python3.12"
  end

  def install
    site_packages = Language::Python.site_packages(python3)
    ENV.prepend_path "PYTHONPATH", Formula["poetry"].opt_libexec/site_packages

    system python3, "-m", "pip", "install", *std_pip_args, "."
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end
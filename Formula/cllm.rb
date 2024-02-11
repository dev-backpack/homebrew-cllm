class Cllm < Formula
  include Language::Python::Virtualenv

  desc "Empower your CLI experience with a command search tool driven by LLM magic!" 
  homepage "https://github.com/dev-backpack/cllm" 
  url "https://github.com/dev-backpack/cllm/releases/download/v0.1.0/cllm-0.1.0.tar.gz" 
  sha256 "d18f230616dfea375c93789fe11cbc78bcd97520fe26329ff7f1d928f6092a85"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.10"
  depends_on "pipx" => :build

  def install
    virtualenv_install_with_resources
    system "pipx", "install", "poetry"
    system "poetry", "install"
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end
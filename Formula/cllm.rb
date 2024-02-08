class Cllm < Formula
  desc "Empower your CLI experience with a command search tool driven by LLM magic!" 
  homepage "https://github.com/dev-backpack/cllm" 
  url "https://github.com/dev-backpack/cllm/releases/download/v0.1.0/cllm-0.1.0.tar.gz" 
  sha256 "d18f230616dfea375c93789fe11cbc78bcd97520fe26329ff7f1d928f6092a85"
  version "0.1.0"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end
end
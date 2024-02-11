class Cllm < Formula
  include Language::Python::Virtualenv

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

  resource "typer" do
    url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75886439ab3dac889f14f8ad511982a754e382c9b6ca895b29e9/typer-0.9.0.tar.gz"
    sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
  end

  resource "langchain-openai" do
    url "https://files.pythonhosted.org/packages/74/f6/f81578866358d7b2e2b51703bfb20ef239c8d5353f715c9d3c35f9a0bd1d/langchain_openai-0.0.5.tar.gz"
    sha256 "f317fee5b652949ad96ad7edf8ef7a044a6a3f0cc71d1e12f9d5261789fd68c4"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/49/de/a67103ddb6f4bedde7ce9e455d4a9f071a53f42453e1773bc6e00a5872bb/langchain_core-0.1.22.tar.gz"
    sha256 "deac12b3e42a08bbbaa2acf83d5f8dd2d5513256d8daf0e853e9d68ff4c99d79"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end
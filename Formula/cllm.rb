class Cllm < Formula
  include Language::Python::Virtualenv
  desc "Empower your CLI experience with a command search tool driven by LLM magic!" 
  homepage "https://github.com/dev-backpack/cllm" 
  url "https://github.com/dev-backpack/cllm/releases/download/v0.1.1/cllm-0.1.1.tar.gz" 
  sha256 "1ad4fffd0bf4e2e07c1419a51f63a7791cb202823f8fbc553f61e87320031a7b"
  version "0.1.1"
  license "MIT"

  depends_on "python@3.12"

  resource "typer" do
    url "https://files.pythonhosted.org/packages/5b/49/39f10d0f75886439ab3dac889f14f8ad511982a754e382c9b6ca895b29e9/typer-0.9.0.tar.gz"
    sha256 "50922fd79aea2f4751a8e0408ff10d2662bd0c8bbfa84755a699f3bada2978b2"
  end

  resource "langchain-openai" do
    url "https://files.pythonhosted.org/packages/36/bd/2963a5b9f7dcf5759144bbe590984730daccfd8ced01d9de5cbf23072ac5/langchain_openai-0.0.6.tar.gz"
    sha256 "f5c4ebe46f2c8635c8f0c26cc8df27700aacafea025410e418d5a080039974dd"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/9c/ce/832196e7b646f8ceb017d2d3cdf78404a029e5a2470fbb4989b18843dabc/langchain_core-0.1.23.tar.gz"
    sha256 "34359cc8b6f8c3d45098c54a6a9b35c9f538ef58329cd943a2249d6d7b4e5806"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/a7/2c/4c64579f847bd5d539803c8b909e54ba087a79d01bb3aba433a95879a6c5/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/cllm", "--help"
  end
end
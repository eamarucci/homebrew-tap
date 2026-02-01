class Ask < Formula
  desc "CLI para consultar modelos de IA no terminal"
  homepage "https://github.com/eamarucci/ask"
  url "https://github.com/eamarucci/ask/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    bin.install "bin/ask"
    bin.install "bin/??" => "ask-continue"
  end

  def caveats
    <<~EOS
      Para usar corretamente, adicione ao seu .zshrc:

        alias ??='noglob ask-continue'
        alias ask='noglob ask'

      Uso:
        ask qual a capital do Brasil?
        ask -claude,opus what is 2+2?
        ?? e qual a segunda maior?
    EOS
  end
end

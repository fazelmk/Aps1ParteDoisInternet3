class Flor
  attr_reader :categoria
  attr_reader :codigo
  def initialize(codigo, nome, valor, categoria)
    @codigo = codigo
    @nome = nome
    @valor = valor
    @categoria = categoria
  end

  def to_s
    "código: #{@codigo}, nome: #{@nome}, valor: #{@valor} e categoria: #{@categoria}"
  end
end


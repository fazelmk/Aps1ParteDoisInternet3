class Floricultura
  attr_accessor :flores
  def initialize
    @flores = {}
  end

  def adiciona(flor)
    @flores[flor.categoria] ||= []
    @flores[flor.categoria] << flor
  end

  def floresArray
    @flores.values.flatten
  end

  def quantidadeflores
    i = flores.count
  end

  def exibir
    puts ""
    if not @flores.empty?
      puts floresArray
    else
      puts 'Não há nenhuma flor'
    end
  end

end
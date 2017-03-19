require 'floricultura'
class Menu
  def initialize
    @floricultura = Floricultura.new
  end
  def optum
    puts ""
    puts 'Digite o nome: '
    @nome = gets.chomp.to_s
    puts 'Digite o valor: '
    valor = gets.chomp
    puts 'Digite a categoria: '
    categoria = ':'+gets.chomp
    codigo = @floricultura.quantidadeflores
    nome = Flor.new(codigo, @nome, valor, categoria)
    @floricultura.adiciona nome
    print "flor #{@nome}, adicionada, presisone para voltar ao menu"
    if (click = gets.chomp) != nil ;end
  end

  def optdois
    @floricultura.exibir
    if (click = gets.chomp) != nil ;end
  end

  def opttres
    puts "Digite o código da flor que irá ser apagada: "
    codigo = gets.chomp
    objeto = @floricultura.flores.select!{|flor| flor['codigo'] == codigo}
    puts objeto
    @floricultura.flores.delete(objeto)
    puts "flor #{objeto} deletada"
  end
end
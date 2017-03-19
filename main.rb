require File.expand_path('C:\Users\mikha\RubymineProjects\Aps1_parteDois\require_de_arquivos')

floricultura = Floricultura.new
menu = Menu.new


def itens
  print("
1: Adicionar flor
2: Exibir flores
3: Remover flor
Digite a opção: ")

end

itens

while (opt = gets.chomp.to_i) < 4
  case opt
    when 1
      menu.optum
      itens
    when 2
      menu.optdois
      itens
    when 3
      menu.opttres
      itens
  end
end

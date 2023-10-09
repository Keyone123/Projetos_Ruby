require_relative 'Produto'
class Estoque

  def initialize
    @produtos = []
  end

  def menu
    puts('------------------------------- Menu Inicial -------------------------------')
    puts('1.Inserir Produto')
    puts('2.Comprar Produto')
    puts('3.Vender Produto')
    puts('4.Listar Produtos')
    puts('5.Detalhes do Produto')
    puts('0.Sair')
    puts('------------------------------------------------------------------------------')
    puts('Digite sua escolha: ')
    gets.chomp.to_i
  end

  def inserir(nome, cod, preco, quantidade)
    if nome == nil || cod <= 0 || preco <= 0 || quantidade <= 0
      puts('Os dados enviados estão incorretos, tente novamente\n')
      return
    end
    produto = Produto.new(nome, cod, preco, quantidade)
    @produtos.push(produto)
  end

  def comprar(cod, preco, quantidade)
    @produtos.each do |auxiliar|
      if auxiliar.getcod == cod
        auxiliar.comprar(quantidade, preco)
      end
    end
    puts("O produto não foi encontrado")
  end

  def vender(cod, quantidade)
    @produtos.each do |auxiliar|
      if auxiliar.getcod == cod
        return auxiliar.vender(quantidade)
      end
    end
    puts("O produto não foi encontrado")
  end

  def listar
    @produtos.each do |auxiliar|
      puts("Nome: #{auxiliar.getnome} Código: #{auxiliar.getcod}")
    end
  end

  def detalhes(cod)
    @produtos.each do |auxiliar|
      if auxiliar.getcod == cod
        puts("Nome: #{auxiliar.getnome}")
        puts("Código: #{auxiliar.getcod}")
        puts("Preço: #{auxiliar.getpreco}")
        puts("Quantidade: #{auxiliar.getquantidade}")
      end
    end
  end
end

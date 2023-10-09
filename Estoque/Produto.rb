class Produto
  attr_accessor :nome, :quantidade, :cod, :preco
  def initialize(nome, cod, preco, quantidade)
    @nome = nome
    @cod = cod
    @preco = preco
    @quantidade = quantidade
  end

  def comprar(quantidade, preco)
    @quantidade += quantidade
    @preco = (preco * 0.3) + preco
  end

  def vender(quantidade)
    if quantidade < @quantidade
      @quantidade -= quantidade
      return quantidade * @preco
    end
    if quantidade == @quantidade
      @quantidade = 0
      return quantidade * @preco
    end
    if quantidade > @quantidade
      puts('A quantidade pedida é maior que a quantidade no estoque')
      -1
    end
  end

  def getnome
    @nome
  end
  def getcod
    @cod
  end
  def getpreco
    @preco
  end
  def getquantidade
    @quantidade
  end
end

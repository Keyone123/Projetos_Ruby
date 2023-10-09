require_relative 'Estoque'
random = Random.new
igual = false
estoque = Estoque.new
until igual
  opcao = estoque.menu
  case opcao
  when 1
    estoque.inserir("Nescau", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Mingau", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Feijão", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Arroz", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Bisteca", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Toscana", random.rand(1..100), random.rand(1..100), random.rand(1..100))
    estoque.inserir("Biscoito", random.rand(1..100), random.rand(1..100), random.rand(1..100))
  when 2
    puts("Digite o código do produto: ")
    codigo = gets.chomp.to_i
    puts("Digite o preço do produto: ")
    preco = gets.chomp.to_i
    puts("Digite o quantidade do produto: ")
    quantidade = gets.chomp.to_i
    estoque.comprar(codigo, preco, quantidade)
  when 3
    puts("Digite o código do produto: ")
    codigo = gets.chomp.to_i
    puts("Digite o quantidade do produto: ")
    quantidade = gets.chomp.to_i
    estoque.vender(codigo, quantidade)
  when 4
    estoque.listar
  when 5
    puts("Digite o código do produto: ")
    codigo = gets.chomp.to_i
    estoque.detalhes(codigo)
  when 0
    igual = true
  else
    puts("Opção digitada não existe")
  end
end

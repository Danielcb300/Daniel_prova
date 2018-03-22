Dado("que esteja logado no site") do
  @logar = Logar.new
  @logar.load 
  @logar.logar 'danielcardoso.itaplan@outlook.com', 'inmetrics@2018'
end

Quando("efetuar compra de  tres produtos") do
	@carrinho = Carrinho.new
	@carrinho.carrinho
  
end

Entao("validar a quantidade no carrinho") do
  @quantidade = Quantidade.new
  @quantidade.verificar_qtd
   
end

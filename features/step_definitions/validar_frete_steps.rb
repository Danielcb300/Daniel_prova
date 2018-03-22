Dado("que esteja logado no site Store Demo QA") do
  @logar = Logar.new
  @logar.load 
  @logar.logar 'danielcardoso.itaplan@outlook.com', 'inmetrics@2018'
end

Quando("adicionar o produto para ao carrinho de compras") do
	@escolher = Escolher.new
	@escolher.escolher 'Daniel', 'dos Sanots Cardoso', 'Rua helena Rosa Coutinho 23', 'Osasco', 'sp',  '11973692815', 	'sp'
  
end

Entao("verificar se ouve cobranca de frete") do
  @valor_frete = Verificar.new
  @valor_frete.verificar
   
end

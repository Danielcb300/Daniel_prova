#language: pt
#utf-8

Funcionalidade: Verificar cobranca de frete na compra de um produto
	Eu como cliente do site Store Demo QA
	Quero realizar a compra de um produto  
	Para verificar se houve cobranca de frete 

@frete
Cenário: Alterar cadastro
	Dado que esteja logado no site Store Demo QA
	Quando adicionar o produto para ao carrinho de compras
	Entao verificar se ouve cobranca de frete


@carrinho
Cenário: Validar itens
	Dado que esteja logado no site
	Quando efetuar compra de  tres produtos
	Entao validar a quantidade no carrinho 

@remocao
Cenário:remover produto mais caro 
	Dado que ja esteja logado na loja
	Quando efetuar a compra de tres itens
	Entao remover do carrinho o produto mais caro


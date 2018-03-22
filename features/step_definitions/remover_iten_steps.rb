Dado("que ja esteja logado na loja") do                                         
  @logar = Logar.new
  @logar.load 
  @logar.logar 'danielcardoso.itaplan@outlook.com', 'inmetrics@2018'  
end                                                                             
                                                                                
Quando("efetuar a compra de tres itens") do                                     
  @itens_remocao = Itens_remocao.new
  @itens_remocao.excluir  
end                                                                             
                                                                                
Entao("remover do carrinho o produto mais caro") do                             
  @exclusao = Exclusao.new
  @exclusao.exclusao 
    
end                                                                             
                                                                                
class Quantidade < SitePrism::Page
	element :quantidade_total, :css, '#header_cart > a > em.count'
	
def verificar_qtd

	qtd_itens = quantidade_total.text

	puts " Vc tem #{qtd_itens} no carrinho"

end

end
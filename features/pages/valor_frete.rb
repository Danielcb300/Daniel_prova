class Verificar < SitePrism::Page
	element :btn_comprar, :xpath,'//*[@id="wpsc_shopping_cart_container"]/form/div[4]/div/div/span/input'
	element :valida_valores, :css, '#post-30 > div > div.wpsc-transaction-results-wrap > p:nth-child(5)'
	
def verificar

	btn_comprar.click
	valor_final = valida_valores.text
		puts "#{valor_final}"	
end

end
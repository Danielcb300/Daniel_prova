class Exclusao < SitePrism::Page
	element :preco_item1, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td:nth-child(4) > span'
	element :preco_item2, :css,'#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td:nth-child(4) > span'
	element :preco_item3, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td:nth-child(4) > span'
	element :excluir_primeiro, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_0.alt > td.wpsc_product_remove.wpsc_product_remove_0 > form > input[type="submit"]:nth-child(4)'
	element :excluir_segundo, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_1 > td.wpsc_product_remove.wpsc_product_remove_1 > form > input[type="submit"]:nth-child(4)'
	element :excluir_terceiro, :css, '#checkout_page_container > div.slide1 > table > tbody > tr.product_row.product_row_2.alt > td.wpsc_product_remove.wpsc_product_remove_2 > form > input[type="submit"]:nth-child(4)'

	def exclusao 
		valor1 = preco_item1.text.sub'$',''
		valor2 = preco_item2.text.sub'$',''
		valor3 = preco_item3.text.sub'$',''

		valor_novo1 = valor1.to_f
		valor_novo2 = valor2.to_f
		valor_novo3 = valor3.to_f

	if valor_novo1 > valor_novo2 and valor_novo1 > valor_novo3
      excluir_primeiro.click
      maior = valor_novo1
    elsif valor_novo2 > valor_novo1 and valor_novo2 > valor_novo3
        excluir_segundo.click
        maior = valor_novo2
    elsif valor_novo3 > valor_novo1 and valor_novo3 > valor_novo2
        excluir_terceiro.click
        maior = valor_novo3
    end

    return maior

	end

end
	
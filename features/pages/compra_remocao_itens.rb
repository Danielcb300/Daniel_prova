class Itens_remocao < SitePrism::Page
	element :all_products, :css,'#menu-item-72 > a'
	element :link_primeiro, :css, '#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
	element :link_segundo, :css, '#default_products_page_container > div.default_product_display.product_view_40.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
	element :link_terceiro,:css, '#default_products_page_container > div.default_product_display.product_view_64.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
	element :carrinho_compras, :css, '#header_cart > a'

	def excluir 
		wait_for_all_products
		all_products.click
		wait_for_link_primeiro
		link_primeiro.click
		wait_for_link_segundo
		link_segundo.click
		wait_for_link_terceiro
		link_terceiro.click
		wait_for_carrinho_compras
		carrinho_compras.click

	end
end
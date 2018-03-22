class Escolher < SitePrism::Page

	element :all_products, :css,'#menu-item-72 > a'
	element :selecionar_produto, :css,'#default_products_page_container > div.default_product_display.product_view_32.product-category.group > div.productcol > form > div.wpsc_buy_button_container.group > div.input-button-buy > span > input'
	element :carrinho_compra, :css, '#header_cart > a > span.icon'
	element :btn_continue, :css, '#checkout_page_container > div.slide1 > a > span'
	element :firt_name, '#wpsc_checkout_form_2'
	element :last_name, '#wpsc_checkout_form_3'
	element :adress, '#wpsc_checkout_form_4'
	element :city, '#wpsc_checkout_form_5'
	element :state, '#wpsc_checkout_form_6'
	element :phone, '#wpsc_checkout_form_18'
	element :state_entrega, '#wpsc_checkout_form_15'

	def escolher (nome, sobrenome, endereco, cidade, estado, telefone, estado_entrega)
		wait_for_all_products
		all_products.click
		wait_for_selecionar_produto
		selecionar_produto.click
		wait_for_carrinho_compra
		carrinho_compra.click
		wait_for_btn_continue
		btn_continue.click
		firt_name.set(nome)
		last_name.set(sobrenome)
		adress.set(endereco)
		city.set(cidade)
		state.set(estado)
		phone.set(telefone)
		state_entrega.set(estado_entrega)
	end

	
end
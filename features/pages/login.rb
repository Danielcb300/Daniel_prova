class Logar < SitePrism::Page

	set_url 'http://store.demoqa.com/wp-login.php'

	element :campo_username, '#user_login'
	element :campo_password, '#user_pass'
	element :btn_login, '#wp-submit'
	element :btn_menu_principal, :css, '#wp-admin-bar-site-name > a'

	def logar(email, senha)

		wait_for_campo_username
		campo_username.set(email)
		wait_for_campo_password
		campo_password.set(senha)
		wait_for_btn_login
		btn_login.click
		wait_for_btn_menu_principal
		btn_menu_principal.click
	end
end
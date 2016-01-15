class Signin

	@@locator = {
		:signin_text => "Sign in",
		:username_id => "user_login",
		:password_id => "user_password",
		:error_text => "'Invalid email or password"
	}

	def initialize(browser)
		@b = browser
	end
	
	def click_sign
		@b.link(:text => @@locator[:signin_text]).click
	end

	def enter_username(username)
		@b.text_field(:id => @@locator[:username_id]).set username
	end
	
	def enter_password(password)
		@b.text_field(:id => @@locator[:password_id]).set password	
	end

	def is_error_visible
		@b.li(:text => @@locator[:error_text]).exists?
	end
	
end
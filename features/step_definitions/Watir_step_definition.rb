Given /I open the codeschool page/ do
	
	@b.goto (@url.url)
end

When /I click on the sign in link/ do
	@signin = Signin.new(@b)
	@signin.click_sign
end

And /enter the incorrect user details/ do
	@signin.enter_username(@users['invalid']['username'])
	@signin.enter_password(@users['invalid']['password'])
end

Then /I should see an error message/ do
	puts "Does the error message exist?: #{@b.li(:text => 'Invalid email or password.').exists?}"
	@signin.is_error_visible.should be_true
end
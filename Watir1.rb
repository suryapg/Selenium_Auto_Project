require "watir-webdriver"

@b = Watir::Browser.new :firefox

@b.goto ("http://www.codeschool.com")

@b.link(:text => "Sign in").click
@b.text_field(:id => "user_login").set "surya1"

@b.text_field(:id => "user_password").set "sg1234"

@b.button(:text => "Sign In").click

puts @b.li(:text => 'Invalid email or password.').exists?


@b.close
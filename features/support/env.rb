require 'cucumber'
require 'watir-webdriver'
require_relative File.expand_path("../pages/signin.rb", __FILE__)
require_relative File.expand_path("../data/url.json", __FILE__)
require_relative File.expand_path("../data/users.json", __FILE__)

Before do
	@url = JSON.parse(File.read('../data/url.json'))
	@users = JSON.parse(File.read('../data/users.json'))
end

Before do
	@b = Watir::Browser.new :firefox	
end
After do
	@b.close
end


Feature:
	login page

Scenario: invalid login
	Given I open the codeschool page
	When I click on the sign in link
	And enter the incorrect user details
	Then I should see an error message

Given("an user valid") do
  login = LoginPage.new(@driver)
  login.email.send_keys('a@foo.com')
  login.password.send_keys('123456')
  login.login_button.click
end

When("press button") do
  buttons = ButtonPage.new(@driver)
  buttons.push_me_button.click
  pending
end

Then("the time appears") do
  pending
end

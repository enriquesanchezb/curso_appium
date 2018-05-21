class LoginPage
  def initialize(driver)
    @driver = driver
  end

  def email
    @driver.find_element(:id, "enrique.appiumproject:id/email")
  end

  def password
    @driver.find_element(:id, "enrique.appiumproject:id/password")
  end

  def login_button
    @driver.find_element(:id, "enrique.appiumproject:id/email_sign_in_button")
  end
end
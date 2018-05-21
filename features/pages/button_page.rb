class ButtonPage
  def initialize(driver)
    @driver = driver
  end

  def push_me_button
    @driver.find_element(:id, "enrique.appiumproject:id/button")
  end
end
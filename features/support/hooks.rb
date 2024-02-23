Before do
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  Capybara.page.driver.browser.manage.window.maximize
end

After do |scenario |
  if scenario.failed?
    take_screenshot("test_failed", scenario)
  else
    take_screenshot("test_passed", scenario)
  end
end
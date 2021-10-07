Before do |scenario|

    Capybara.current_session.driver.browser.manage.delete_all_cookies
    page.driver.quit
end    
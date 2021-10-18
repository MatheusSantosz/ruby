module Helper
    def print_screen(file_name, result)
        file_path = "report/screenshots/tests_#{result}"
        screenshot = "#{file_path}/#{file_name}.png"
        page.save_screenshot(screenshot)
        attach(screenshot, 'image/png')
    end
end
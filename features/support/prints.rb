module Prints
  def take_screenshot(folder_name, scenario)
    time = Time.now
    date = time.strftime("%Y-%m-%d")  # Use ISO 8601 format for consistency
    hour = time.strftime("%H-%M-%S")

    folder_path = "logs/screenshots/#{date}/#{folder_name}"
    filename = "#{hour}-#{scenario.name.gsub(/\s+/, '_').tr('/', '_')}.png"
    file = File.join(folder_path, filename)  
    
    begin
      FileUtils.mkdir_p(folder_path) unless File.exist?(folder_path)
    rescue Exception => e
      puts "Error creating folder: #{e.message}"
    end
    

    begin
      Capybara.page.save_screenshot(file) 
    rescue StandardError => e
      puts "Error taking screenshot: #{e.message}"
    end

    attach(file, 'image/png')
  end
end
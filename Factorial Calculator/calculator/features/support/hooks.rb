Before do
  @elementos = Elementos.new
  @calculator_page = CalculatorPage.new
end

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,"_").tr("/", "_")
    
  if scenario.failed?
    temp_shot = page.save_screenshot("logs/#{scenario_name}.png")
    Allure.add_attachment(
      name: "#{scenario_name}",  
      type: Allure::ContentType::PNG, 
      source: File.open(temp_shot),   
    )
  else
    temp_shot = page.save_screenshot("logs/#{scenario_name}.png") 
    Allure.add_attachment(
      name: "#{scenario_name}",
      type: Allure::ContentType::PNG,
      source: File.open(temp_shot), 
    )
  end

end

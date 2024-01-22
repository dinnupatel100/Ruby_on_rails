require_relative 'module_data'

module ModuleWar
  include ::ModuleData
  #displays war details for all countries
  def predict_war
    country_data.each do |data|
      puts data[:army_strength] > 100_000 ? "#{data[:name]} can win the war" : "#{data[:name]} canot win the war"
    end
  end

  #display war details for specific country
  def country_war_details(country_name)
    country_data.each do |data|
      if (data[:name] == country_name) 
        puts (data[:army_strength] > 100_000) ? "#{data[:name]} can win the war" : "#{data[:name]} canot win the war"
      end
    end
  end

end

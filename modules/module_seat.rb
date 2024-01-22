require_relative 'module_data'

# ModuleSeat module handles seat details of all countries
module ModuleSeat
  include ::ModuleData

  #displays seat details for all countries
  def un_seats
    country_data.each do |data|
      puts data[:status] == "developed" ? "#{data[:name]}  have a seat in the United Nations Security Council." : "#{data[:name]} not have a seat in the United Nations Security Council."
    end
  end

  # displays seat details for specific country
  def country_seat_details(country_name)
    country_data.each do |data|
      if data[:name] == country_name 
        puts (data[:status] == "developed") ? "#{data[:name]}  have a seat in the United Nations Security Council." : "#{data[:name]} not have a seat in the United Nations Security Council."
      end
    end
  end

end
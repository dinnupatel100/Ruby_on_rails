# A CLI application for handling data from as many countries as we can. Example of what data we can have:
# Population ,GDP(Gross Domestic Production), States, Army Strength, State of the country(developing, developed) Etc.
#
# On the basis of all these data we will be building modules to conceive various outputs like:
# 1) Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World bank).
# 2) Whether the country can have a seat in the UN (United Nations) Security Council.
# 3) Whether the country can win the war or not


require_relative 'modules/module_data'
require_relative 'modules/module_loan'
require_relative 'modules/module_war'
require_relative 'modules/module_seat'

class Country
  include ::ModuleData
  include ::ModuleLoan
  include ::ModuleWar
  include ::ModuleSeat

  #displays data of all countries
  def country_details
    country_data.each do |hash|
      puts "Country name : #{hash[:name]} | GDP : #{hash[:gdp]} | States : #{hash[:no_of_states]} | Army Strength : #{hash[:army_strength]} | Status : #{hash[:status]}"
    end
  end

end

country = Country.new

puts "\n\nDetails : \n1.Loan Details\n2.War Details \n3.Security Council Seat Details\n4.All details for specific country\n5.Country Data\n\nEnter your choice : "
choice = gets.chomp.to_i

case choice
when 1 
  # display loan details of all countries
  puts "\nAll countries with loan details \n\n"
  country.loan_approve
when 2
  # display war details of all countries
  puts "\nAll countries with war details \n\n"
  country.predict_war
when 3
  # display seats details of all countries
  puts "\nAll countries with UN seat details \n\n"
  country.un_seats
when 4
  #display user specific country details
  puts "Enter country name : "
  country_name = gets.chomp.capitalize
  puts "\n1.loan details\n2. War Details \n3.Security Council Seat Details"
  puts "\nEnter your choice : "
  choice = gets.chomp.to_i
  case choice
  when 1 
    country.country_loan_details(country_name)
  when 2 
    country.country_war_details(country_name)
  when 3
    country.country_seat_details(country_name)
  end
  
when 5
  # display all countries data
  puts "\nCountries Data \n\n"
  country.country_details
end





  
require_relative 'module_data'

# ModuleLoan module handles loan approval 
module ModuleLoan
  include ModuleData
  
  #display loan details for all countries
  def loan_approve()
    country_data.each do |hash|
      puts (hash[:gdp] > 30_000_000) && (hash[:status] == "developed") ? "Loan approved for #{hash[:name]}" : "Loan not approved for #{hash[:name]}"
    end
  end

  #display specific country loan details
  def country_loan_details(country_name)
    country_data.each do |data|
      if (data[:name] == country_name)
        puts (data[:gdp] > 30_000_000) && (data[:status] == "developed") ? "Loan approved for #{data[:name]}" : "Loan not approved for #{data[:name]}"
      end
    end
  end
end

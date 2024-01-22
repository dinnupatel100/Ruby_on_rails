#ModuleData module stores data of all countries
module ModuleData
  def country_data
    countries_data = [
      {name: "India", gdp: 32_000_000, no_of_states: 29, army_strength: 400_000, status:"developed"},
      {name: "China", gdp: 150_000_000, no_of_states: 25, army_strength: 200_000, status:"developing"},
      {name: "Bangladesh", gdp: 3_000_000, no_of_states: 7, army_strength: 40_000, status:"developing"},
      {name: "Sri Lanka", gdp: 2_000_000, no_of_states: 3, army_strength: 20_000, status:"developing"},
      {name: "Russia", gdp: 90_000_000, no_of_states: 19, army_strength: 700_000, status:"developed"},
      {name: "USA", gdp: 300_000_000, no_of_states: 15, army_strength: 600_000, status:"developed"},
      {name: "Iran", gdp: 5_000_000, no_of_states: 11, army_strength: 350_000, status:"developed"},
      {name: "France", gdp: 24_000_000, no_of_states: 16, army_strength: 100_000, status:"developed"},
      ]
    return countries_data
    end
end


defmodule CatapultTest do
  use ExUnit.Case
  doctest Catapult

  test "Get Candidate" do
    assert Catapult.get_candidate_profile("John") == "John Smith\n£7.00\nEvent managment, Retail, Catering"
  end

   test "Add Candidate" do
   	candidates = [ john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["Event managment", "Retail", "Catering"]},
  	mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.50, skills: ["Bartender", "Barista", "Waitressing"]},
		steve: %{first_name: "Steve", last_name: "Jones", hourly_rate: 10.00, skills: ["Retail Manager"]} ]
    assert Catapult.add_candidate(steve: %{first_name: "Steve", last_name: "Jones", hourly_rate: 10.00, skills: ["Retail Manager"]}) == candidates 
  end

  test "Update Candidate" do
  	updated_candidates = [ john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["Event managment", "Retail", "Catering"]},
  	mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.50, skills: ["Bartender", "Barista", "Waitressing","hostess"]}]
  	assert Catapult.update_candidate_skill("Mary", "hostess") == updated_candidates
	end

	test "Calculate Catapult Rate" do
  	assert Catapult.calculate_rate("Mary") == 8.25
	end

end

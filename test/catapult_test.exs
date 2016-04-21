defmodule CatapultTest do
  use ExUnit.Case
  doctest Catapult

  test "getCandidate" do
    assert Catapult.getCandidate("john") == "John Smith"
  end

   test "addCandidate" do
   	candidates = [ john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["event managment", "retail", "catering"]},
  	mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.00, skills: ["bartender", "Barista", "Waitressing"]},
		steve: %{first_name: "Steve", last_name: "Jones", hourly_rate: 10.00, skills: ["Retail Manager"]} ]
    assert Catapult.addCandidate(steve: %{first_name: "Steve", last_name: "Jones", hourly_rate: 10.00, skills: ["Retail Manager"]}) == candidates 
  end

  test "updateCandidate"
  	updated_candidates = [ john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["event managment", "retail", "catering"]},
  	mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.00, skills: ["bartender", "Barista", "Waitressing","hostess"]},
		steve: %{first_name: "Steve", last_name: "Jones", hourly_rate: 10.00, skills: ["Retail Manager"]} ]
  	assert Catapult.updateCandidateSkill("mary", "hostess") == updated_candidates
end

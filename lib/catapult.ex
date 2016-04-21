defmodule Catapult do
	
	def candidates do
	[
 	john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["event managment", "retail", "catering"]},
  mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.00, skills: ["bartender", "Barista", "Waitressing"]}
	]
	end

	def getCandidate(name) do 
		 candidate = String.to_atom(name)
		 candidates[candidate].first_name <> " " <>candidates[candidate].last_name
	end

	def addCandidate(candidate) do
	candidates ++ candidate
	end

	def updateCandidateSkill(name,skill) do
	candidate = String.to_atom(name)
	put_in candidates[candidate].skills,skill
	end

end

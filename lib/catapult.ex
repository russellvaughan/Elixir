defmodule Catapult do
	
	def candidates do
	[
 	john: %{first_name: "John", last_name: "Smith", hourly_rate: 7.00, skills: ["Event managment", "Retail", "Catering"]},
  mary: %{first_name: "Mary", last_name: "Lamb", hourly_rate: 7.50, skills: ["Bartender", "Barista", "Waitressing"]}
	]
	end

	def get_candidate_profile(name) do 
		 candidate=convert_to_candidate(name)
		 candidates[candidate].first_name<>" "<>candidates[candidate].last_name<>"\n"<>"£"<>
		 rate_converter(candidates[candidate].hourly_rate)<>"\n"<>list_to_string(candidates[candidate].skills)
	end

	def add_candidate(candidate) do
	candidates ++ candidate
	end

	def update_candidate_skill(name,skill) do
	candidate=convert_to_candidate(name)
	update_in candidates[candidate].skills, &List.insert_at(&1,3,skill)
	end

	def calculate_rate(name) do 
	candidate=convert_to_candidate(name)
	catapult_rate=candidates[candidate].hourly_rate * 1.10
	Float.round(catapult_rate,2)
	end

	defp convert_to_candidate(name) do 
	downcased_name=String.downcase(name)
	String.to_atom(downcased_name)
	end

	defp rate_converter(rate)  do
		Float.to_string rate, [decimals: 2]
	end

	def list_to_string(list) do 
	skills = Enum.join(list, ", ")
	end

end

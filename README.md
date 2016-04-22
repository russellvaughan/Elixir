# Catapult

**Author:**
Russell Vaughan

**Description**
A simple command line app designed as a way to understand the Elixir Syntax and how to TDD the language. A User can retreve candidate profiles, Add skills to candidates and calculate what their Caltapult charge out rate would be.

## Installation:

```
git clone https://github.com/russellvaughan/Elixir.git
cd lib
elixirc catapult.ex
iex
```

## Example Code:
**Retrieving a user profile**
```
iex(1)> IO.puts(Catapult.get_candidate_profile("John"))        
Name: John Smith
Rate: £7.00
Skills: Event managment, Retail, Catering
```

**Adding a skill to a user profile**
```
iex(2)> Catapult.candidates
[mary: %{first_name: "Mary", hourly_rate: 7.5, last_name: "Lamb",
   skills: ["Bartender", "Barista", "Waitressing"]}]

iex(3)> Catapult.update_candidate_skill("Mary", "hostess")
[mary: %{first_name: "Mary", hourly_rate: 7.5, last_name: "Lamb",
   skills: ["Bartender", "Barista", "Waitressing", "hostess"]}]
```
**Calculating Charge Out Rate**
```
iex(4)> Catapult.calculate_rate("Mary")
8.25

```
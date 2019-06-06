## QUESTION 1

require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 10,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 29,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 20,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 70,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 97,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
pokemon.each do |poke_hash|
  if poke_hash[:name] === "bulbasaur"
    poke_hash[:abilities][0][:ability][:url]
  end
end

# How would you return the first pokemon with base experience over 40?
 pokemon.find {|poke_hash| poke_hash[:base_experience] > 40}

# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
pokemon.select {|poke_hash| poke_hash[:base_experience] > 40}

# How would you return an array of all of the pokemon's names?
pokemon.map {|poke_hash| poke_hash[:name]}

# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
test = pokemon.any? { |poke_hash| poke_hash[:weight] > 60 }
puts test

#  whatever method you use should return true if there are any such pokemon, false if not.

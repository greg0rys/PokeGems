class Pokemon < ApplicationRecord
 def self.fetch_from_api(pokemon_name)
    uri = URI("https://pokeapi.co/api/v2/pokemon/#{pokemon_name.downcase}")

    response = Net::HTTP.get(uri)
    data = JSON.parse(response)

    # Fetching additional information
    species_uri = URI(data['species']['url'])
    species_response = Net::HTTP.get(species_uri)
    species_data = JSON.parse(species_response)

    evolutions = species_data['evolves_from_species'] ? 1 : species_data['evolves_from_species'].length

    new(
      name: data['name'].capitalize,
      type: data['types'].map { |type| type['type']['name'].capitalize }.join(', '),
      id_number: data['id'],
      evolutions: evolutions,
      description: "No description available from the API."
    )
  end
end

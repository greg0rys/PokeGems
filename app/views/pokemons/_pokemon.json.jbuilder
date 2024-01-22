json.extract! pokemon, :id, :name, :num, :poke_type, :evolves, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)

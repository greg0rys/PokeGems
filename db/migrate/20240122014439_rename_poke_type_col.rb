class RenamePokeTypeCol < ActiveRecord::Migration[7.1]
  def change
    rename_column :pokemons, :type, :poke_type
  end
end

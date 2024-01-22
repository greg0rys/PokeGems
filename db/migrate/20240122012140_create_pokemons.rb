class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :num
      t.string :type
      t.boolean :evolves

      t.timestamps
    end
  end
end

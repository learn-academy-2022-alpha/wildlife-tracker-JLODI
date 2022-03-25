class AddColumnsToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :common_name, :string
    add_column :animals, :latin_name, :string
    add_column :animals, :kingdom, :string
  end
end

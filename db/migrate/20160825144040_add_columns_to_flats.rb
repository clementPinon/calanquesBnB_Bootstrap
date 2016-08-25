class AddColumnsToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :name, :string
    add_column :flats, :string, :string
    add_column :flats, :city, :string
    add_column :flats, :capacity, :integer
    add_column :flats, :address, :string
  end
end

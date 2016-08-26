class AddSlugToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :slug, :string
  end
end

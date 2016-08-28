class AddFlatToWishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :wishes, :flat, foreign_key: true
  end
end

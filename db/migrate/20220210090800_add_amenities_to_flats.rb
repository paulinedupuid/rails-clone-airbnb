class AddAmenitiesToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :amenities, :string, array: true
  end
end

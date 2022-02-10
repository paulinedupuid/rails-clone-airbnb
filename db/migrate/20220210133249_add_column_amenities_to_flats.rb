class AddColumnAmenitiesToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :amenities, :integer
  end
end

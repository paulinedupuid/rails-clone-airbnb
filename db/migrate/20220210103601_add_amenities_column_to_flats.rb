class AddAmenitiesColumnToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :amenities, :integer, array: true, null: false, default: []
  end
end

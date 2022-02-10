class AddAmenitiesAgainToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :amenities, :integer, default: 0
  end
end

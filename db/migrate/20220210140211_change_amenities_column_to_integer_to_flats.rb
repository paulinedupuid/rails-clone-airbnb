class ChangeAmenitiesColumnToIntegerToFlats < ActiveRecord::Migration[6.1]
  def change
    remove_column :flats, :amenities
  end
end

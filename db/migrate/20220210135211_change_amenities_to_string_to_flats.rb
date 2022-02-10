class ChangeAmenitiesToStringToFlats < ActiveRecord::Migration[6.1]
  def change
    change_column :flats, :amenities, :string
  end
end

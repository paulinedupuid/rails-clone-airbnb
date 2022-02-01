class ChangeAvailabilityStartAndAvailabilityEndColumnsToFlats < ActiveRecord::Migration[6.1]
  def change
    change_column :flats, :availability_start, :datetime
    change_column :flats, :availability_end, :datetime
  end
end

class AddStartTimeAndEndTimeColumnsToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :start_time, :datetime
    add_column :reservations, :end_time, :datetime
  end
end

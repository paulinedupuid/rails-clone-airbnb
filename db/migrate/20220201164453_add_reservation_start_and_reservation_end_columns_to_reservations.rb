class AddReservationStartAndReservationEndColumnsToReservations < ActiveRecord::Migration[6.1]
  def change
    add_column :reservations, :reservation_start, :date
    add_column :reservations, :reservation_end, :date
  end
end

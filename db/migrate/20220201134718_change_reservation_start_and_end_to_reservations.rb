class ChangeReservationStartAndEndToReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :reservation_start
    remove_column :reservations, :reservation_end
  end
end

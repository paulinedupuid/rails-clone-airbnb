class AddDefaultStatusToReservations < ActiveRecord::Migration[6.1]
  def change
    change_column_default :reservations, :status, "pending"
  end
end

class RemovePriceColumnToRservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :price
  end
end

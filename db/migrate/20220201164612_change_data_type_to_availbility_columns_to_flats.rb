class ChangeDataTypeToAvailbilityColumnsToFlats < ActiveRecord::Migration[6.1]
  def change
    change_column :flats, :availability_start, :date
    change_column :flats, :availability_end, :date
  end
end

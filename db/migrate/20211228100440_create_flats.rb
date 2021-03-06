class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.string :address
      t.date :availability_start
      t.date :availability_end
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

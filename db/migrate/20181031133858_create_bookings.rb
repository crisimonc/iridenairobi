class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :motorcycle, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

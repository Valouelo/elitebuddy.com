class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.time :start_time
      t.time :end_time
      t.integer :total_price
      t.boolean :status
      t.references :buddy, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class ModifyTimeToBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :start_time
    remove_column :bookings, :end_time
    add_column :bookings, :start_time, :date
    add_column :bookings, :end_time, :date

  end
end

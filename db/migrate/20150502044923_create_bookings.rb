class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :end
      t.references :user, index: true
      t.references :car_park, index: true

      t.timestamps
    end
  end
end

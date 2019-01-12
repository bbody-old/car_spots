class MajorChanges < ActiveRecord::Migration
  def change
  	add_column :bookings, :mon, :boolean
  	add_column :bookings, :tues, :boolean
  	add_column :bookings, :wed, :boolean
  	add_column :bookings, :thurs, :boolean
  	add_column :bookings, :fri, :boolean

  	remove_column :bookings, :start
  	remove_column :bookings, :end
  end
end

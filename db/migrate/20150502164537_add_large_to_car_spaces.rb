class AddLargeToCarSpaces < ActiveRecord::Migration
  def change
    add_column :car_parks, :large, :boolean
  end
end

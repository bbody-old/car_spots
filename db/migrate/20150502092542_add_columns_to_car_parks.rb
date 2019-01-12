class AddColumnsToCarParks < ActiveRecord::Migration
  def change
    add_column :car_parks, :covered, :boolean
    add_column :car_parks, :electrical, :boolean
  end
end

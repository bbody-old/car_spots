class AddImageColumnCarParks < ActiveRecord::Migration
  def change
  	add_column :car_parks, :image, :string
  end
end

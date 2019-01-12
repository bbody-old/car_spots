class CreateCarParks < ActiveRecord::Migration
  def change
    create_table :car_parks do |t|
      t.string :name
      t.float :longitude
      t.float :lattitude
      t.text :address
      t.references :user, index: true

      t.timestamps
    end
  end
end

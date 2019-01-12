class AddDescriptionToCarSpace < ActiveRecord::Migration
  def change
    add_column :car_parks, :description, :text
  end
end

json.array!(@car_parks) do |car_park|
  json.extract! car_park, :id, :name, :longitude, :lattitude, :address, :user_id
  json.url car_park_url(car_park, format: :json)
end

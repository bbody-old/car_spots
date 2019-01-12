json.array!(@bookings) do |booking|
  json.extract! booking, :id, :start, :end, :user_id, :car_park_id
  json.url booking_url(booking, format: :json)
end

json.array!(@bookings) do |booking|
  json.extract! booking, :id, :visa_service, :flight_service, :hotel_service, :pickup_service, :standard_service, :notes, :customer_id
  json.url booking_url(booking, format: :json)
end

json.array!(@reservations) do |reservation|
  json.extract! reservation, :people, :date, :time, :name, :phone_number
  json.url reservation_url(reservation, format: :json)
end

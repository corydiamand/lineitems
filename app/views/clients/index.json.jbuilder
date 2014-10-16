json.array!(@clients) do |client|
  json.extract! client, :id, :first_name, :last_name, :address, :monthly_fee, :tax, :charge_date
  json.url client_url(client, format: :json)
end

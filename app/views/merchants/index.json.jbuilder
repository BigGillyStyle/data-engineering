json.array!(@merchants) do |merchant|
  json.extract! merchant, :id, :address, :name
  json.url merchant_url(merchant, format: :json)
end

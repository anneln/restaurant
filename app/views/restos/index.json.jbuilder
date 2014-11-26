json.array!(@restos) do |resto|
  json.extract! resto, :id, :name, :address, :phone, :category
  json.url resto_url(resto, format: :json)
end
